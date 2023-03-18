import 'dart:convert';
import 'dart:developer';

import 'package:app/app/app.router.dart';
import 'package:app/enums/api_type.dart';
import 'package:app/services/api_request.dart';
import 'package:app/ui/common/mock_data.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

import 'package:app/app/app.locator.dart';
import 'package:app/services/google_authentication_service.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  get http => null;

  void authentication() async {
    final prefs = await SharedPreferences.getInstance();
    final authenticationService = locator<GoogleAuthenticationService>();
    await authenticationService.googleLogin();
    // Make a call here to the backend to get the token.
    String googleId = authenticationService.user.id.toString();
    String email = authenticationService.user.email.toString();
    String firstName = authenticationService.user.displayName.toString();
    String lastName = authenticationService.user.displayName.toString();

    Map<String, String> body = {
      "google_id": googleId,
    };

    ApiRequest apirequest = ApiRequest();
    Response response = await apirequest
        .getResponse("/user/user-check/", ApiType.post, body: body);
    String data = response.body;

    // Decode the JSON data.
    Map<String, dynamic> valueMap = jsonDecode(data);
    if (valueMap['status'] == true) {
      prefs.setString('token', valueMap['token']);
      // prefs.setString('points', valueMap['points']);
      log("Calling the navigate service");
      _navigationService.replaceWith(Routes.homeView);
    } else {
      // Register the user here
      Map<String, String> registrationBody = {
        "google_id": googleId,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
      };
      Response response = await apirequest.getResponse(
          "/auth/registration/", ApiType.post,
          body: registrationBody);
      String data = response.body;
      log(data);
      // Decode the JSON data.
      Map<String, dynamic> registrationData = jsonDecode(data);
      prefs.setString('token', registrationData['key']);
      prefs.setBool('onBoarded', false);
      _navigationService.replaceWith(Routes.instructionpageView);
      // Navigrate to the  screen
    }
    log(response.body.toString());
  }

  void navigateForGetStarted() {
    _navigationService.replaceWith(Routes.instructionpageView);

    // TODO: Testing purpose only
    // _navigationService.replaceWith(Routes.chatgptView);
  }
}
