import 'package:app/enums/button_type.dart';
import 'package:app/file_exporter.dart';
import 'package:app/ui/common/buttons.dart';
import 'package:rive/rive.dart';
import 'quiz_viewmodel.dart';

class QuizView extends StackedView<QuizViewModel> {
  final List<Map<String, dynamic>> questions;
  const QuizView({Key? key, required this.questions}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    QuizViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.white,
                      )),
                  child: viewModel.questionIndex < viewModel.questions.length
                      ? LinearProgressIndicator(
                          value: viewModel.questionIndex /
                              viewModel.questions.length,
                          minHeight: 10,
                          backgroundColor: Colors.white,
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.blue),
                        )
                      : SizedBox()),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: viewModel.questionIndex < viewModel.questions.length
                      ? Text(
                          viewModel.questions[viewModel.questionIndex]
                                  ['questionText']
                              .toString(),
                          style: const TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      : Container()),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: viewModel.questionIndex < viewModel.questions.length
                  ? Column(
                      children: [
                        ...(viewModel.questions[viewModel.questionIndex]
                                ['answers'] as List<Map<String, Object>>)
                            .map((answer) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () => viewModel
                                  .selectoption(answer['index'] as int),
                              child: Container(
                                // height: 55,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color:
                                      answer['index'] == viewModel.selectedindex
                                          ? Colors.blue
                                          : kcMediumGrey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Center(
                                    child: Text(
                                      answer['text'].toString(),
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList()
                      ],
                    )
                  : SafeArea(
                      child: Column(
                      children: [
                        Center(
                          child: SizedBox(
                            height: 400,
                            width: double.infinity,
                            child: RiveAnimation.asset(
                              "assets/animation/avatar.riv",
                              fit: BoxFit.cover,
                              controllers: [
                                SimpleAnimation("break"),
                              ],
                            ),
                          ),
                        ),
                        const Text(
                          'Completed with the Test',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 17),
              child: ReUsedBtn(
                  title: viewModel.questionIndex < viewModel.questions.length
                      ? 'Check Answer'
                      : 'Continue',
                  onClickAction: () {
                    if (viewModel.isselected) {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            decoration: const BoxDecoration(
                              color: Color(0xff263238),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Row(
                                    children: [
                                      Icon(
                                          viewModel.answer == true
                                              ? Icons.check_circle
                                              : Icons.cancel,
                                          color: viewModel.answer == true
                                              ? successTextColor
                                              : failedTextColor,
                                          size: 30),
                                      horizontalSpaceSmall,
                                      Text(
                                        viewModel.answer == true
                                            ? "Right Answer"
                                            : "Wrong Answer",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900,
                                            color: viewModel.answer == true
                                                ? successTextColor
                                                : failedTextColor),
                                      ),
                                    ],
                                  ),
                                ),
                                verticalSpaceSmall,
                                viewModel.answer == true
                                    ? Container()
                                    : Text(
                                        viewModel.rightanswer,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: failedTextColor),
                                      ),
                                verticalSpaceMedium,
                                ReUsedBtn(
                                    title: viewModel.answer == true
                                        ? "Continue"
                                        : "Got It",
                                    onClickAction: () {
                                      Navigator.pop(context);
                                    },
                                    buttonType: viewModel.answer == true
                                        ? ButtonType.success
                                        : ButtonType.failed),
                                verticalSpaceLarge,
                              ],
                            ),
                          );
                        },
                      );
                    }
                    if (viewModel.questionIndex < viewModel.questions.length) {
                      viewModel.checkanswer();
                      debugPrint(viewModel.selectedindex.toString());
                    } else {
                      viewModel.checkanswer();
                      viewModel.nextquestion();
                    }
                  },
                  buttonType: viewModel.isselected
                      ? ButtonType.success
                      : ButtonType.disabled),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  @override
  QuizViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      QuizViewModel(questions: questions);
}
