import 'dart:developer';

import 'package:app/app/app.dialogs.dart';
import 'package:app/app/app.locator.dart';
import 'package:app/app/app.router.dart';
import 'package:app/ui/common/mock_data.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OptionsOnBoardingViewModel extends BaseViewModel {
  OptionsOnBoardingViewModel({required this.content});
  List<dynamic> content;
  final _navigationService = locator<NavigationService>();

  int get counterLabel => selectedoptions;
  int get currentIndex1 => currentIndex;

  int selectedoptions = 1000;
  int currentIndex = 0;

  final _dialogService = locator<DialogService>();

  void showDialogDisabled() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'We are working day and night to make this feature available',
      description:
          'We are working day and night to make this feature available',
    );
  }

  void selectedOption(index) {
    selectedoptions = index;
    debugPrint(selectedoptions.toString());
    rebuildUi();
  }

  void changeTheContent() {
    currentIndex = currentIndex + 1;
    selectedoptions = 1000;
    rebuildUi();
  }

  void naigatetoQuizScreen() {
    _navigationService.replaceWithQuizView(questions: onboardingquiz);
  }
}
