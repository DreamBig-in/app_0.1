// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/ui/views/book/book_view.dart' as _i4;
import 'package:app/ui/views/chatgpt/chatgpt_view.dart' as _i14;
import 'package:app/ui/views/home/home_view.dart' as _i2;
import 'package:app/ui/views/instructionpage/instructionpage_view.dart' as _i5;
import 'package:app/ui/views/login/login_view.dart' as _i6;
import 'package:app/ui/views/markdown/markdown_view.dart' as _i7;
import 'package:app/ui/views/onboardingquiz/onboardingquiz_view.dart' as _i10;
import 'package:app/ui/views/options_on_boarding/options_on_boarding_view.dart'
    as _i13;
import 'package:app/ui/views/profile/profile_view.dart' as _i8;
import 'package:app/ui/views/quiz/quiz_view.dart' as _i9;
import 'package:app/ui/views/recruitment/recruitment_view.dart' as _i15;
import 'package:app/ui/views/scoreboard/scoreboard_view.dart' as _i11;
import 'package:app/ui/views/slider/slider_view.dart' as _i12;
import 'package:app/ui/views/startup/startup_view.dart' as _i3;
import 'package:flutter/material.dart' as _i16;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i17;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const bookView = '/book-view';

  static const instructionpageView = '/instructionpage-view';

  static const loginView = '/login-view';

  static const markdownView = '/markdown-view';

  static const profileView = '/profile-view';

  static const quizView = '/quiz-view';

  static const onboardingquizView = '/onboardingquiz-view';

  static const scoreboardView = '/scoreboard-view';

  static const sliderView = '/slider-view';

  static const optionsOnBoardingView = '/options-on-boarding-view';

  static const chatgptView = '/chatgpt-view';

  static const recruitmentView = '/recruitment-view';

  static const all = <String>{
    homeView,
    startupView,
    bookView,
    instructionpageView,
    loginView,
    markdownView,
    profileView,
    quizView,
    onboardingquizView,
    scoreboardView,
    sliderView,
    optionsOnBoardingView,
    chatgptView,
    recruitmentView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.bookView,
      page: _i4.BookView,
    ),
    _i1.RouteDef(
      Routes.instructionpageView,
      page: _i5.InstructionpageView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i6.LoginView,
    ),
    _i1.RouteDef(
      Routes.markdownView,
      page: _i7.MarkdownView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i8.ProfileView,
    ),
    _i1.RouteDef(
      Routes.quizView,
      page: _i9.QuizView,
    ),
    _i1.RouteDef(
      Routes.onboardingquizView,
      page: _i10.OnboardingquizView,
    ),
    _i1.RouteDef(
      Routes.scoreboardView,
      page: _i11.ScoreboardView,
    ),
    _i1.RouteDef(
      Routes.sliderView,
      page: _i12.SliderView,
    ),
    _i1.RouteDef(
      Routes.optionsOnBoardingView,
      page: _i13.OptionsOnBoardingView,
    ),
    _i1.RouteDef(
      Routes.chatgptView,
      page: _i14.ChatgptView,
    ),
    _i1.RouteDef(
      Routes.recruitmentView,
      page: _i15.RecruitmentView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
        maintainState: false,
      );
    },
    _i3.StartupView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
        maintainState: false,
      );
    },
    _i4.BookView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.BookView(),
        settings: data,
        maintainState: false,
      );
    },
    _i5.InstructionpageView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.InstructionpageView(),
        settings: data,
        maintainState: false,
      );
    },
    _i6.LoginView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.LoginView(),
        settings: data,
        maintainState: false,
      );
    },
    _i7.MarkdownView: (data) {
      final args = data.getArgs<MarkdownViewArguments>(nullOk: false);
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i7.MarkdownView(key: args.key, markData: args.markData),
        settings: data,
        maintainState: false,
      );
    },
    _i8.ProfileView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.ProfileView(),
        settings: data,
        maintainState: false,
      );
    },
    _i9.QuizView: (data) {
      final args = data.getArgs<QuizViewArguments>(nullOk: false);
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i9.QuizView(key: args.key, questions: args.questions),
        settings: data,
        maintainState: false,
      );
    },
    _i10.OnboardingquizView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.OnboardingquizView(),
        settings: data,
        maintainState: false,
      );
    },
    _i11.ScoreboardView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.ScoreboardView(),
        settings: data,
        maintainState: false,
      );
    },
    _i12.SliderView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.SliderView(),
        settings: data,
        maintainState: false,
      );
    },
    _i13.OptionsOnBoardingView: (data) {
      final args = data.getArgs<OptionsOnBoardingViewArguments>(nullOk: false);
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i13.OptionsOnBoardingView(key: args.key, content: args.content),
        settings: data,
        maintainState: false,
      );
    },
    _i14.ChatgptView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.ChatgptView(),
        settings: data,
        maintainState: false,
      );
    },
    _i15.RecruitmentView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.RecruitmentView(),
        settings: data,
        maintainState: false,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class MarkdownViewArguments {
  const MarkdownViewArguments({
    this.key,
    required this.markData,
  });

  final _i16.Key? key;

  final String markData;

  @override
  String toString() {
    return '{"key": "$key", "markData": "$markData"}';
  }
}

class QuizViewArguments {
  const QuizViewArguments({
    this.key,
    required this.questions,
  });

  final _i16.Key? key;

  final List<Map<String, dynamic>> questions;

  @override
  String toString() {
    return '{"key": "$key", "questions": "$questions"}';
  }
}

class OptionsOnBoardingViewArguments {
  const OptionsOnBoardingViewArguments({
    this.key,
    required this.content,
  });

  final _i16.Key? key;

  final List<dynamic> content;

  @override
  String toString() {
    return '{"key": "$key", "content": "$content"}';
  }
}

extension NavigatorStateExtension on _i17.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBookView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.bookView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInstructionpageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.instructionpageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMarkdownView({
    _i16.Key? key,
    required String markData,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.markdownView,
        arguments: MarkdownViewArguments(key: key, markData: markData),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToQuizView({
    _i16.Key? key,
    required List<Map<String, dynamic>> questions,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.quizView,
        arguments: QuizViewArguments(key: key, questions: questions),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingquizView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingquizView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToScoreboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.scoreboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSliderView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.sliderView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOptionsOnBoardingView({
    _i16.Key? key,
    required List<dynamic> content,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.optionsOnBoardingView,
        arguments: OptionsOnBoardingViewArguments(key: key, content: content),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChatgptView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.chatgptView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRecruitmentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.recruitmentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBookView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.bookView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithInstructionpageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.instructionpageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMarkdownView({
    _i16.Key? key,
    required String markData,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.markdownView,
        arguments: MarkdownViewArguments(key: key, markData: markData),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithQuizView({
    _i16.Key? key,
    required List<Map<String, dynamic>> questions,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.quizView,
        arguments: QuizViewArguments(key: key, questions: questions),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingquizView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingquizView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithScoreboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.scoreboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSliderView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.sliderView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOptionsOnBoardingView({
    _i16.Key? key,
    required List<dynamic> content,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.optionsOnBoardingView,
        arguments: OptionsOnBoardingViewArguments(key: key, content: content),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChatgptView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.chatgptView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRecruitmentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.recruitmentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
