import 'dart:developer';

import 'package:app/enums/button_type.dart';
import 'package:app/file_exporter.dart';
import 'package:app/ui/common/buttons.dart';
import 'package:app/ui/common/mock_data.dart';
import 'package:app/ui/views/login/login_view.dart';
import 'package:app/ui/views/login/login_viewmodel.dart';

import 'options_on_boarding_viewmodel.dart';

class OptionsOnBoardingView extends StackedView<OptionsOnBoardingViewModel> {
  OptionsOnBoardingView({
    Key? key,
    required this.content,
  }) : super(key: key);

  List<dynamic> content;

  @override
  Widget builder(
    BuildContext context,
    OptionsOnBoardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kcBackgroundColor,
        elevation: 0,
      ),
      backgroundColor: kcBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Stack(
            children: [
              ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      content[viewModel.currentIndex1]["Question"],
                      style: const TextStyle(fontSize: 20),
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount:
                            content[viewModel.currentIndex1]["option"].length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (content[viewModel.currentIndex1]["option"]
                                      [index]["status"] ==
                                  "disable") {
                                viewModel.showDialogDisabled();
                              } else {
                                // TODO: Change the color to selected one
                                viewModel.selectedOption(index);
                              }
                            },
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: viewModel.selectedoptions == index
                                          ? selectColor
                                          : kcMediumGrey,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 17),
                                  margin: const EdgeInsets.only(top: 20),
                                  width: double.infinity,
                                  height: 60,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: kcMediumGrey),
                                        color: scaffoldBackgroundColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 17),
                                    margin: const EdgeInsets.only(top: 20),
                                    width: double.infinity,
                                    child: Text(
                                      content[viewModel.currentIndex1]["option"]
                                          [index]["title"],
                                      textAlign: TextAlign.center,
                                    )
                                    // Text(content[currentIndex]["option"][index]["title"]),
                                    ),
                              ],
                            ),
                          );
                        }),
                  ]),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: ReUsedBtn(
                      title: "Continue",
                      onClickAction: () {
                        print(viewModel.currentIndex1);
                        if (viewModel.currentIndex1 + 1 == content.length) {
                          log("message");
                          viewModel.navigateToslider();
                        }
                        if (content[viewModel.currentIndex1]["option"]
                                [viewModel.selectedoptions]["redirectTo"] ==
                            "QuizView") {
                        } else {
                          viewModel.changeTheContent();
                        }
                      },
                      buttonType: ButtonType.success),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  OptionsOnBoardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OptionsOnBoardingViewModel(content: content);
}
