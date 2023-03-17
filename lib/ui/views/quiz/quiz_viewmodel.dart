import 'dart:math';

import 'package:app/file_exporter.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../enums/bottom_sheet_type.dart';

class QuizViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();
  final List<Map<String, dynamic>> questions = const [
    {
      'questionText':
          'The Flutter framework provides tooling and UI libraries to build UI experiences that run on?',
      'answers': [
        {'text': 'Android', 'isright': false, 'index': 1},
        {'text': 'Windows', 'isright': false, 'index': 2},
        {'text': 'Linux', 'isright': false, 'index': 3},
        {'text': 'All of the above', 'isright': true, 'index': 4},
      ],
    },
    {
      'questionText': 'While loop is?',
      'answers': [
        {
          'text': 'used to conditionally execute code',
          'isright': false,
          'index': 1
        },
        {
          'text':
              'used to repeat a block of code as long as a given condition is true.*',
          'isright': false,
          'index': 2
        },
        {
          'text':
              '3 used to repeat a block of code a specific number of times.',
          'isright': false,
          'index': 3
        },
        {
          'text': 'used to select one of several code blocks',
          'isright': true,
          'index': 4
        },
      ],
    },
    {
      'questionText': 'There are several built-in data types, in which list is',
      'answers': [
        {'text': 'used to store integers', 'isright': false, 'index': 1},
        {
          'text': 'used to store floating-point numbers',
          'isright': false,
          'index': 2
        },
        {
          'text': 'used to store ordered collections of objects',
          'isright': true,
          'index': 3
        },
        {
          'text': 'used to store unordered collections of key-value pairs',
          'isright': false,
          'index': 4
        },
      ],
    },
    {
      'questionText':
          'The Flutter framework provides tooling and UI libraries to build UI experiences that run on',
      'answers': [
        {'text': 'Android', 'isright': false, 'index': 1},
        {'text': 'Windows', 'isright': false, 'index': 2},
        {'text': 'Linux', 'isright': false, 'index': 3},
        {'text': 'All of the above', 'isright': true, 'index': 4},
      ],
    },
    {
      'questionText': 'while loop is ',
      'answers': [
        {
          'text': 'used to conditionally execute code',
          'isright': false,
          'index': 1
        },
        {
          'text': 'used to conditionally execute code',
          'isright': true,
          'index': 2
        },
        {
          'text': 'used to repeat a block of code a specific number of times.',
          'isright': false,
          'index': 3
        },
        {
          'text': 'used to select one of several code blocks',
          'isright': false,
          'index': 4
        },
      ],
    },
    {
      'questionText': 'Assignment operators are',
      'answers': [
        {
          'text': 'used to compare values and return a boolean result',
          'isright': false,
          'index': 1
        },
        {
          'text': 'used to assign values to variables',
          'isright': true,
          'index': 2
        },
        {
          'text': 'used to perform logical operations',
          'isright': false,
          'index': 3
        },
        {
          'text': 'a shorthand way of writing simple if-else statements',
          'isright': false,
          'index': 4
        },
      ],
    },
    {
      'questionText':
          'Which of the following is the correct syntax for defining a variable in Dart?',
      'answers': [
        {'text': 'var x = 5;', 'isright': true, 'index': 1},
        {'text': 'x = 5;', 'isright': false, 'index': 2},
        {'text': 'int x = 5;', 'isright': false, 'index': 3},
        {'text': 'variable x = 5;', 'isright': false, 'index': 4},
      ],
    },
    {
      'questionText':
          'Which of the following is a valid way to define a function in Dart?',
      'answers': [
        {
          'text': 'function sum(int a, int b) => a + b;}',
          'isright': true,
          'index': 1
        },
        {
          'text': 'def sum(int a, int b) { return a + b;',
          'isright': false,
          'index': 2
        },
        {
          'text': 'void sum(int a, int b) { print(a + b); }',
          'isright': false,
          'index': 3
        },
        {
          'text': 'function sum(int a, int b) { return a + b; }',
          'isright': false,
          'index': 4
        },
      ],
    },
    {
      'questionText':
          'Which of the following operators is used for null-aware access in Dart?',
      'answers': [
        {'text': '==', 'isright': false, 'index': 1},
        {'text': '!=', 'isright': false, 'index': 2},
        {'text': '?.', 'isright': true, 'index': 3},
        {'text': '!!', 'isright': false, 'index': 4},
      ],
    },
  ];

  var questionIndex = 0;

  void resetQuiz() {
    questionIndex = 0;
    notifyListeners();
  }

//Function to select the option and change the color of the selected option
  bool isselected = false;
  int selectedindex = 0;
  void selectoption(int index) {
    selectedindex = index;
    isselected = true;
    notifyListeners();
  }

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

      showBottomSheet(answer, rightanswer);
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

//BottomSheet to display the answer is not selected

  void showBottomSheetNotSelected() {
    _bottomSheetService.showBottomSheet(title: 'Choose an answer');
  }

//BottomSheet to display the answer is correct or not
  void showBottomSheet(bool answer, String rightanswer) {
    _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.notice,
        description: 'Description',
        title: 'Answer',
        isScrollControlled: true,
        barrierDismissible: true,
        data: answer,
        customData: rightanswer);
  }

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

  //Function to go to the next question
  void nextquestion() {
    if (questionIndex < questions.length) {
      questionIndex++;
    } else {
      navigateToHome();
    }
    notifyListeners();
  }

  void navigateToHome() {
    _navigationService.replaceWith(Routes.homeView);
  }
}
