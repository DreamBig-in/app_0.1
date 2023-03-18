import 'package:app/app/app.bottomsheets.dart';
import 'package:app/app/app.dialogs.dart';

import "file_exporter.dart";

import 'package:firebase_core/firebase_core.dart';

import 'package:app/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NeoEdu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: appBarBackgroundColor,
          elevation: 0,
          shape: Border(
            bottom: BorderSide(
              color: scaffoldBackgroundColor,
              width: 0.5,
            ),
          ),
        ),
        fontFamily: "Arial",
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontFamily: "Arial",
          ),
          bodyText2: TextStyle(
            color: Colors.white,
            fontFamily: "Arial",
          ),
        ),
      ),
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
