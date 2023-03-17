import 'dart:math';

import 'package:app/app/app.locator.dart';
import 'package:app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SliderViewModel extends BaseViewModel {
  double _sliderValue = 10;
  final _navigationService = locator<NavigationService>();

  double get sliderValue => _sliderValue;

  void updateSliderValue(double value) {
    _sliderValue = value;
    print("Slider value: $_sliderValue");
    notifyListeners();
  }

  void navigateToHomeScreen() {
    print("navigate to home screen");
    _navigationService.replaceWith(Routes.homeView);
  }

  void navigateToQuiz() {
    _navigationService.replaceWith(Routes.quizView);
  }
}
