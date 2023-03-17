import 'package:app/ui/views/home/home_viewmodel.dart';
import 'package:app/ui/views/login/login_viewmodel.dart';

const List<Map<String, dynamic>> homeviewResponse = [
  {
    "unit": "1",
    "unitName": "Learn the basics of Dart",
    "chapterCount": 5,
    "progress": {"chapter_name 1": true, "chapter_name 2": false},
  },
  {
    "unit": "1",
    "unitName": "Setup development environment",
    "chapterCount": 5,
    "progress": {"chapter_name 1": true, "chapter_name 2": false},
  },
];

const coursesEnrolled = [" ", " ", " "];

Map<String, dynamic> techStack = {
  "Question": "Which Boat  you would like to sail ⚓ with?",
  "option": [
    {
      "title": "Android",
      "status": "enabled",
      "redirectTo": [androidTech]
    },
    {"title": "Backend", "status": "disable"},
    {"title": "Networking", "status": "disable"},
    {"title": "DevOps", "status": "disable"},
    {"title": "AI/ML", "status": "disable"},
  ]
};

Map<String, dynamic> androidTech = {
  "Question": "Which tech would you like to go with?",
  "option": [
    {"title": "Flutter", "status": "enabled", "redirectTo": "QuizView"},
    {"title": "Java", "status": "disable"},
    {"title": "Kotlin", "status": "disable"},
    {"title": "Akash", "status": "disable"},
  ]
};
//List questions for onboarding

const List<Map<String, dynamic>> onboardingquiz = [
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
        'text': '3 used to repeat a block of code a specific number of times.',
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

//Quiz questions for each chapter

const List<Map<String, dynamic>> flutter_unit1 = [
  {
    'questionText':
        'In Dart, how does the order of code instructions usually run?',
    'answers': [
      {'text': 'Randomly', 'isright': false, 'index': 1},
      {'text': 'By size of chunk of code', 'isright': false, 'index': 2},
      {'text': 'Sequentially from top to bottom', 'isright': true, 'index': 3},
      {'text': 'Alphabetically', 'isright': false, 'index': 4},
    ]
  },
  {
    'questionText': 'What type of operator is ">" in Flutter?',
    'answers': [
      {'text': 'Arithmetic operator', 'isright': false, 'index': 1},
      {'text': 'Comparison operator', 'isright': false, 'index': 2},
      {'text': 'Relational operator', 'isright': true, 'index': 3},
      {'text': 'Logical operator', 'isright': false, 'index': 4},
    ],
  },
  {
    'questionText': ' Which of the following is a loop statement?',
    'answers': [
      {'text': 'Switch-case', 'isright': false, 'index': 1},
      {'text': 'If-else statement', 'isright': false, 'index': 2},
      {'text': 'Do-while loop', 'isright': false, 'index': 3},
      {'text': 'While loop', 'isright': true, 'index': 4},
    ],
  },
  {
    'questionText': 'What is the main advantage of using dart functions?',
    'answers': [
      {
        'text': 'Improves the modular approach and enhances code reusability',
        'isright': false,
        'index': 1
      },
      {
        'text': 'Functions make the program more secure',
        'isright': false,
        'index': 2
      },
      {
        'text': 'Breaks the large code into smaller modules',
        'isright': false,
        'index': 3
      },
      {
        'text': 'Makes debugging the program easier',
        'isright': true,
        'index': 4
      },
    ],
  },
  {
    'questionText': 'When is the late modifier used?',
    'answers': [
      {
        'text': 'To analyze control flow in Dart.',
        'isright': false,
        'index': 1
      },
      {
        'text': 'To declare a non-nullable variable.',
        'isright': true,
        'index': 2
      },
      {
        'text': 'To lazily initialize a variable.',
        'isright': false,
        'index': 3
      },
      {
        'text': 'To initialize a non-nullable variable after its declaration.',
        'isright': false,
        'index': 4
      },
    ],
  },
];

const List<Map<String, dynamic>> flutter_unit2 = [
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
];
