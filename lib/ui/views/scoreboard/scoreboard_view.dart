import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'scoreboard_viewmodel.dart';

class ScoreboardView extends StackedView<ScoreboardViewModel> {
  const ScoreboardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ScoreboardViewModel viewModel,
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
  ScoreboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ScoreboardViewModel();
}
