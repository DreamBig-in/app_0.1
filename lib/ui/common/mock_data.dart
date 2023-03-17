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
