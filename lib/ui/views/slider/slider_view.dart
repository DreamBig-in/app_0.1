import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'slider_viewmodel.dart';

class SliderView extends StackedView<SliderViewModel> {
  const SliderView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SliderViewModel viewModel,
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
  SliderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SliderViewModel();
}
