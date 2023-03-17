import 'dart:math';

import 'package:app/enums/button_type.dart';
import 'package:app/file_exporter.dart';
import 'package:app/ui/common/buttons.dart';
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
    double _value = 5;
    double min = 1;
    double max = 15;
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              const Text("Whats your current Skill level?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                child: Center(
                    child: SliderTheme(
                  data: SliderThemeData(
                    thumbColor: Colors.white,
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 20),
                    activeTrackColor: successTextColor,
                    inactiveTrackColor: Colors.grey[300],
                    trackHeight: 30,
                    overlayColor: Colors.blueAccent.withOpacity(0.2),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 24),
                  ),
                  child: Slider(
                    value: viewModel.sliderValue,
                    min: min,
                    max: max,
                    onChanged: (value) {
                      viewModel.updateSliderValue(value);
                    },
                  ),
                )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("Beginner"), Text("Advanced")],
              ),
              const Spacer(
                flex: 1,
              ),
              ReUsedBtn(
                  title: "Continue",
                  onClickAction: () {
                    viewModel.navigateToQuiz();
                  },
                  buttonType: ButtonType.success)
            ],
          ),
        ),
      ),
    );
  }

  @override
  SliderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SliderViewModel();
}
