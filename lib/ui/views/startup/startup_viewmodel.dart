import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:app/app/app.locator.dart';
import 'package:app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    bool? onBoarded = prefs.getBool('onBoarded');
    //TODO: Also add a onboarded check here
    log(token.toString());
    if (token != null) {
      if (onBoarded == false) {
        _navigationService.replaceWith(Routes.instructionpageView);
      } else {
        _navigationService.replaceWith(Routes.homeView);
      }
    } else {
      _navigationService.replaceWithLoginView();
      return;
    }
  }
}
