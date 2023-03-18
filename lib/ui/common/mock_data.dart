import 'package:app/ui/views/home/home_viewmodel.dart';
import 'package:app/ui/views/login/login_viewmodel.dart';

const List<Map<String, dynamic>> homeviewResponse = [
  {
    "unit": "1",
    "unitName":
        """Learn about widgets, their lifecycle, and how to build custom widgets. Understand the widget tree and how to manage the layout and positioning of widgets.""",
    "chapterCount": 4,
    "progress": {"chapter_name 1": true, "chapter_name 2": false},
  },
  {
    "unit": "2",
    "unitName":
        "Learn about different types of input widgets, such as TextField, DropdownButton, and Checkbox.Understand the role of TextEditingController and how it can be used to read and manipulate user input.",
    "chapterCount": 5,
    "progress": {"chapter_name 1": true, "chapter_name 2": false},
  },
];

const coursesEnrolled = [" "];

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

const List<Map<String, dynamic>> scoreboard = [
  {
    'number': 1,
    'name': 'Pratik',
    'score': 100,
  },
  {
    'number': 2,
    'name': 'Piyush',
    'score': 90,
  },
  {
    'number': 3,
    'name': 'David',
    'score': 85,
  },
  {
    'number': 4,
    'name': 'Rahul',
    'score': 70,
  },
  {
    'number': 5,
    'name': 'Rohan',
    'score': 50,
  },
];

List<String> chatGPTQuestion = [
  "what is the difference between stateless and statefull widget",
  "Ask me question to test my flutter knowledge in MCQ format with answer"

const List<Map<String, dynamic>> topCompany = [
  {
    'name': "TVS",
    'vacancy': "20 Job Vacancy",
    'img':
        'https://www.tvsmotor.com/-/media/Feature/Header/tvs-logo.png?h=28&w=153&la=en&hash=81FC665387EC969333303505CD210311',
    'salary': '\$2k-5k/Mo',
  },
  {
    'name': "Solona",
    'vacancy': "10 Job Vacancy",
    'img':
        'https://hack-overflow.tech/static/media/solanaWhite.1148ac0688f5e8cc8c87.png',
    'salary': '\$1k-3k/Mo',
  },
  {
    'name': "Polygon",
    'vacancy': "15 Job Vacancy",
    'img':
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.KpHnWBS7Bd_y7VIKpcYo5AHaHa%26pid%3DApi&f=1&ipt=2100463c16ee8585bf209cd1cc1dc72e94af50efac72f049fc7ac8c5c2009a75&ipo=images',
    'salary': '\$1k-3k/Mo',
  },
];

const List<Map<String, dynamic>> suggestedJob = [
  {
    'name': "IT Support",
    'company': "Devfolio",
    'img':
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fassets.devfolio.co%2Fhackathons%2F92aad02596384660a3f09b606d311ee7%2Fsponsors%2F15a90b2ff4f74736a9316114d9976f08%2F334.png&f=1&nofb=1&ipt=1ec294ffcf7595367d5a90333f03f7406369d82a2b42135fc32c03db7fe325ce&ipo=images',
    'location': 'India',
    'type': "Full Time",
    'salary': '\$1400',
  },
  {
    'name': "Flutter Developer",
    'company': "Beeceptor",
    'img':
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.OH54rjyjK_6_mdqGA5Fn-AAAAA%26pid%3DApi&f=1&ipt=83b2b4707934919434064996b5fd21f94f8262732d1128c4e25f15b98187b421&ipo=images',
    'location': 'India',
    'type': "Internship",
    'salary': '\$1000',
  },
  {
    'name': "Android Developer",
    'company': "Filecoin",
    'img':
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.NBxAKV29VdGAc-l8OsPhIgHaHa%26pid%3DApi&f=1&ipt=24fa0629c1e704f2e9c57fbf27751ed83e9e32af9699de8f70e80216b740a571&ipo=images',
    'location': 'UK',
    'type': "Internship",
    'salary': '\$950',
  },
  {
    'name': "SDE",
    'company': "Google",
    'img':
        'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fpurepng.com%2Fpublic%2Fuploads%2Flarge%2Fpurepng.com-google-logo-2015brandlogobrand-logoiconssymbolslogosgoogle-6815229372333mqrr.png&f=1&nofb=1&ipt=9ad23443de4e0304ba042e15c1b7411ece9129d487460f5244dcf7383e6644ed&ipo=images',
    'location': 'US',
    'type': "Internship",
    'salary': '\$1500',
  },
];
