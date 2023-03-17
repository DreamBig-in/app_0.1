import 'package:app/app/app.locator.dart';
import 'package:app/app/app.router.dart';
import 'package:app/enums/button_type.dart';
import 'package:app/file_exporter.dart';
import 'package:app/ui/common/buttons.dart';
import 'package:app/ui/views/home/home_viewmodel.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../common/mock_data.dart';
import 'instructionpage_viewmodel.dart';
import 'package:rive/rive.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class InstructionpageView extends StackedView<InstructionpageViewModel> {
  // It should take 3 parameters
  // 1- Function that needs to be executed when the user clicks on the button
  // 2- String that will be displayed in the animation

  const InstructionpageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InstructionpageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 1,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: const Color(0xffFF6060),
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
                  TypewriterAnimatedText(
                      "Welcome to the world of personalized learning, Make sure you answer further questions carefully",
                      textStyle: const TextStyle(fontSize: 20),
                      speed: const Duration(milliseconds: 80)),
                ]),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  HomeViewModel().logout();
                },
                child: SizedBox(
                  height: 400,
                  child: RiveAnimation.asset(
                    "assets/animation/avatar.riv",
                    fit: BoxFit.cover,
                    controllers: [
                      SimpleAnimation("working"),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          // Change this button to custom button
          ReUsedBtn(
            title: "Get Started",
            onClickAction: () {
              locator<NavigationService>().replaceWithOptionsOnBoardingView(
                  content: [techStack, androidTech]);
            },
            buttonType: ButtonType.success,
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  @override
  InstructionpageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InstructionpageViewModel();
}
