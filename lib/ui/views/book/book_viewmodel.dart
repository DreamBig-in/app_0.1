import 'package:app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../app/app.locator.dart';

class BookViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String dartBasics = """

# Dart Basics

Dart is an open-source, general-purpose, object-oriented programming language with C-style 
syntax developed by Google in 2011. 

The purpose of Dart programming is to create a frontend user interfaces for the web and mobile apps. It can also be used to build server and desktop applications.

Visit the following resources to learn more:

* *Dart Overview*  [links - DartOverview.com](https://dart.dev/tools/dartpad).
* *What is Dart Programming?* [links - Dart.com](https://www.javatpoint.com/flutter-dart-programming).
* *Dart Tutorial* [links - DartTutorial.com](https://www.geeksforgeeks.org/dart-tutorial/). 
* *About Dart* [links - AboutDart.com](https://flutterbyexample.com/lesson/about-dart). 
* *What is Dart?* [links - WhatIsDart.com](https://www.youtube.com/watch?v=sOSd6G1qXoY).
* *Dart in 100 Seconds* [links - DartIn100.com](https://www.youtube.com/watch?v=NrO0CJCbYLA).
""";

  String dartPad = """
# DartPad
DartPad is an online tool that allows developers to write and run Dart code snippets. 

It can also be used to run Flutter code, making it a convenient way to try out Flutter apps and widgets without having to set up a full development environment.

Visit the following resources to learn more:

* *DartPad* [links - DartPad.com](https://dart.dev/tools/dartpad).
* *DartPad in Tutorials* [links - DartPadInTutorials.com](https://dart.dev/tools/dartpad/dartpad-best-practices).

""";
  String variables = """
# Variables
In Flutter, variables are used to store values. There are two types of variables in Flutter:

local variables: These are declared within a function and are only accessible within that function

Instance variables: They are declared within a class and are accessible throughout the entire class.

Variables in Flutter can store values of different data types, such as numbers, strings, booleans, and more.

Visit the following resources to learn more:

* *Variables* [links - Variables.com](https://dart.dev/language/variables).
* *Dart - Variables* [links - Dart-Variables.com](https://howtoflutter.dev/dart/variables/).
""";

  String builtinTypes = """
# Built-in Types
There are several built-in data types, including:

int: used to store integers

double: used to store floating-point numbers

String: used to store text

bool: used to store true or false values

List: used to store ordered collections of objects

Map: used to store unordered collections of key-value pairs

Additionally, there are other complex data types like dynamic, var, and Object in Dart programming language which is used in Flutter.

Visit the following resources to learn more:

* *Built-in types* [links - Built-inTypes.com](https://dart.dev/language/built-in-types).
* *Overview of Built-in Types* [links - OverviewOfBuilt-inTypes.com](https://dart.dev/guides/language/coming-from/js-to-dart#built-in-types).


""";

  String functions = """
# Functions
Dart is a true object-oriented language, so even functions are objects and have a type, Function. 
This means that functions can be assigned to variables or passed as arguments to other functions. You can also call an instance of a Dart class as if it were a function.

Visit the following resources to learn more:

* *Functions* [links - Functions.com](https://dart.dev/language/functions).
* *Dart Function* [links - Functions.com](https://www.javatpoint.com/dart-function).
""";

  String operators = """
# Operators
Operators are symbols or keywords used to perform operations on values. 

There are several types of operators available in Flutter:

Arithmetic operators: used to perform mathematical operations like addition (+), subtraction (-), multiplication (*), division (/), and more.

Relational operators: used to compare values and return a boolean result (==, !=, >, <, >=, <=).

Logical operators: used to perform logical operations like AND (&&), OR (||), and NOT (!).

Assignment operators: used to assign values to variables (=, +=, -=, *=, /=, %=).

Ternary operator: a shorthand way of writing simple if-else statements (condition ? if_true : if_false).

These operators can be used to perform operations on values, variables, and expressions in Flutter.

Visit the following resources to learn more:

*Operators* [links - Operators.com](https://dart.dev/language/operators).

""";

  String flowStatements = """
# Control Flow Statements
In Dart, control flow statements are used to control the flow of execution of a program. 
The following are the main types of control flow statements in Dart:

if-else: used to conditionally execute code based on a boolean expression.

for loop: used to repeat a block of code a specific number of times.


while loop: used to repeat a block of code as long as a given condition is true.

do-while loop: similar to the while loop, but the block of code is executed at least once before the condition is evaluated.

switch-case: used to select one of several code blocks to execute based on a value.

break: used to exit a loop early.

continue: used to skip the current iteration of a loop and continue with the next one.

These control flow statements can be used to create complex logic and control the flow of execution in Dart programs.

Visit the following resources to learn more:

* *Control flow statements* [links - ControlFlowStatements.com](https://dart.dev/language/control-flow).
* *Dart Control Flow Statements* [links - DartControlFlowStatements.com](https://www.w3adda.com/dart-tutorial/dart-control-flow-statements).


""";
  Future<void> launchInApp(String myUrl) async {
    final Uri uri = Uri.parse(myUrl);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    )) {
      throw Exception('Could not launch $uri');
    }
  }

  void navigateToMarkDown(String data) {
    _navigationService.navigateToMarkdownView(markData: data);
  }
  // void navigateToMarkDown() {
  //   _navigationService.navigateTo(Routes.markdownView);
}
