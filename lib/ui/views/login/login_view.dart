import 'dart:developer';

import 'package:app/app/app.locator.dart';
import 'package:app/app/app.router.dart';
import 'package:app/services/google_authentication_service.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '/file_exporter.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final _navigationService = locator<NavigationService>();

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          // margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // GestureDetector(
                  //   onTap: (() {
                  //     // TODO: Testing Code Should be removed later.
                  //     final authenticationService =
                  //         locator<GoogleAuthenticationService>();
                  //     authenticationService.logOut();
                  //     log("Logging out");
                  //   }),
                  //   child: Container(
                  //     margin: const EdgeInsets.symmetric(
                  //         horizontal: 17, vertical: 17),
                  //     height: 35,
                  //     width: 35,
                  //     decoration: BoxDecoration(
                  //       color: const Color(0XFFD9D9D9),
                  //       borderRadius: BorderRadius.circular(5),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    width: 10,
                    height: 50,
                  ),
                  Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      // color: const Color(0XFF797D80),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        "NeoEdu",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
                      TypewriterAnimatedText(
                          "Welcome to the world of personalized learning",
                          textStyle: const TextStyle(fontSize: 16),
                          speed: const Duration(milliseconds: 80)),
                    ]),
                  ),
                ],
              ),
              SizedBox(height: height * .02),
              SizedBox(
                width: width,
                child: Image.asset('assets/images/onboarding.png'),
              ),
              const Spacer(
                flex: 1,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Write the code for the sign in with Get Started button
                    // TODO: Testing Code Should be refactored later
                    _navigationService.replaceWith(Routes.instructionpageView);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: successTextColor,
                    foregroundColor: const Color(0xff000000),
                    minimumSize: const Size.fromHeight(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    'Get Started for Free',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton.icon(
                  onPressed: () {
                    LoginViewModel().authentication();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffffffff),
                    foregroundColor: const Color(0xff000000),
                    minimumSize: const Size.fromHeight(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  label: const Text(
                    'Continue with Google',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  icon: Image.asset(
                    "assets/images/googleIcon.png",
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
