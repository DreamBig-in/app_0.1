import 'dart:developer';

import 'package:app/app/app.router.dart';
import 'package:app/file_exporter.dart';
import 'package:app/services/google_authentication_service.dart';
import 'package:app/ui/common/mock_data.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:app/app/app.locator.dart';
import 'package:app/enums/bottom_sheet_type.dart';
import 'package:app/enums/dialog_type.dart';
import 'package:app/ui/common/app_strings.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.stack,
      title: "ksHomeBottomSheetTitle",
      description: ksHomeBottomSheetDescription,
    );
  }

  final _navigationService = locator<NavigationService>();

  Future logout() async {
    log("logout");
    final prefs = await SharedPreferences.getInstance();
    final authenticationService = locator<GoogleAuthenticationService>();
    authenticationService.logOut();
    await prefs.clear();
    _navigationService.replaceWith(Routes.loginView);
  }

  void navigateToQuiz() {
    _navigationService.navigateToQuizView(questions: flutter_unit1);
  }

  void navigateToBook() {
    _navigationService.navigateTo(Routes.bookView);
  }

  void navigatetoProfile() {
    _navigationService.replaceWith(Routes.profileView);
  }

  void navigatetoHome() {
    _navigationService.replaceWith(Routes.homeView);
  }

  void navigatetoScore() {}

  void launchReplitApp() {
    // TODO: Should move to replit.
    log("Should launch replit app");
  }
}
