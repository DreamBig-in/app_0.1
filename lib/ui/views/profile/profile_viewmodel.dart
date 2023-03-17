import 'dart:developer';

import 'package:app/app/app.locator.dart';
import 'package:app/app/app.router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../services/google_authentication_service.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  Future logout() async {
    log("logout");
    final prefs = await SharedPreferences.getInstance();
    // final authenticationService = locator<GoogleAuthenticationService>();
    // authenticationService.logOut();
    await prefs.clear();
    _navigationService.replaceWith(Routes.loginView);
  }

  void navigateToRecruitmentScreen() {
    print("navigate to recruitment screen");
    _navigationService.replaceWith(Routes.recruitmentView);
  }
}
