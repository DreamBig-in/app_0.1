import 'package:app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:app/ui/views/home/home_view.dart';
import 'package:app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:app/ui/views/book/book_view.dart';
import 'package:app/ui/views/instructionpage/instructionpage_view.dart';
import 'package:app/ui/views/login/login_view.dart';
import 'package:app/ui/views/markdown/markdown_view.dart';
import 'package:app/ui/views/profile/profile_view.dart';
import 'package:app/ui/views/quiz/quiz_view.dart';
import 'package:app/ui/views/onboardingquiz/onboardingquiz_view.dart';
import 'package:app/ui/views/scoreboard/scoreboard_view.dart';
import 'package:app/ui/views/slider/slider_view.dart';
import 'package:app/ui/bottom_sheets/checkanswer/checkanswer_sheet.dart';
import 'package:app/ui/bottom_sheets/stack/stack_sheet.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: BookView),
    MaterialRoute(page: InstructionpageView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: MarkdownView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: QuizView),
    MaterialRoute(page: OnboardingquizView),
    MaterialRoute(page: ScoreboardView),
    MaterialRoute(page: SliderView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    StackedBottomsheet(classType: CheckanswerSheet),
    StackedBottomsheet(classType: StackSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
