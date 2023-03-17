import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'onboardingquiz_viewmodel.dart';

class OnboardingquizView extends StackedView<OnboardingquizViewModel> {
  const OnboardingquizView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingquizViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  OnboardingquizViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingquizViewModel();
}
