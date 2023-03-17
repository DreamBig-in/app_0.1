import 'dart:math';
import 'package:app/file_exporter.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../enums/bottom_sheet_type.dart';

class QuizViewModel extends BaseViewModel {
  late List<Map<String, dynamic>> questions = [];
  QuizViewModel({required this.questions});
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();

  var questionIndex = 0;

  void resetQuiz() {
    questionIndex = 0;
    notifyListeners();
  }

//--------------------------------------------------------------
//Function to select the option and change the color of the selected option
  bool isselected = false;
  int selectedindex = 0;
  void selectoption(int index) {
    selectedindex = index;
    isselected = true;
    notifyListeners();
  }

//--------------------------------------------------------------

//Function to check the answer is correct or not
  bool answer = false;
  void checkanswer() {
    log(questionIndex);
    if (isselected) {
      if (selectedindex == 0) {
        return;
      }
      if (questions[questionIndex]['answers'][selectedindex - 1]['isright']) {
        answer = true;
      } else {
        answer = false;
      }
      selectedindex = 0;
      getrightanswer();
      debugPrint(answer.toString());
      debugPrint(rightanswer.toString());

      nextquestion();
      if (questionIndex < questions.length) {
        isselected = false;
      } else {
        isselected = true;
      }
    } else {
      showBottomSheetNotSelected();
    }
    notifyListeners();
  }

//--------------------------------------------------------------
//BottomSheet to display the answer is not selected

  void showBottomSheetNotSelected() {
    _bottomSheetService.showBottomSheet(title: 'Choose an answer');
  }

//--------------------------------------------------------------
  String rightanswer = '';
  //write a function to return the string of the right answer
  void getrightanswer() {
    for (int i = 0; i < questions[questionIndex]['answers'].length; i++) {
      if (questions[questionIndex]['answers'][i]['isright']) {
        rightanswer = questions[questionIndex]['answers'][i]['text'];
        debugPrint(rightanswer);
      }
    }
  }

//--------------------------------------------------------------
  //Function to go to the next question
  void nextquestion() {
    if (questionIndex < questions.length) {
      questionIndex++;
    } else {
      navigateToHome();
    }
    notifyListeners();
  }

//--------------------------------------------------------------
  void navigateToHome() {
    _navigationService.replaceWith(Routes.homeView);
  }
}
