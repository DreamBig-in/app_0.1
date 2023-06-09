import 'package:app/enums/button_type.dart';
import 'package:app/file_exporter.dart';
import 'package:app/ui/views/home/home_view.dart';
import 'package:app/ui/views/home/home_viewmodel.dart';

class ReUsedBtn extends StatelessWidget {
  ReUsedBtn({
    required this.title,
    required this.onClickAction,
    required this.buttonType,
    super.key,
  });
  final String title;
  Function onClickAction;
  ButtonType buttonType;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              color: buttonType == ButtonType.success
                  ? successTextColordark
                  : buttonType == ButtonType.failed
                      ? failedTextColor
                      : kcMediumGrey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: buttonType == ButtonType.success
                  ? successTextColor
                  : buttonType == ButtonType.failed
                      ? failedTextColor
                      : kcMediumGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 20,
                    color: scaffoldBackgroundColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      onTap: () => onClickAction(),
    );
  }
}

class LockedIcon extends StatelessWidget {
  const LockedIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(5),
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
          height: 80,
          width: 82,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 14, right: 3),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
          ),
          height: 70,
          width: 70,
          child: const Icon(
            Icons.lock,
            size: 50,
          ),
        ),
      ),
    ]);
  }
}

class BronzeIcon extends StatelessWidget {
  const BronzeIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 120, 111, 27),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(5),
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
          height: 80,
          width: 82,
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(top: 10, left: 14, right: 3),
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 248, 110, 60),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
            ),
            height: 70,
            width: 70,
            child: Icon(Icons.star, size: 50, color: Colors.white24),
          )),
    ]);
  }
}

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget({super.key, required this.currentindex});

  int currentindex = 0;

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: scaffoldBackgroundColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.currentindex,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  HomeViewModel().navigatetoHome();
                }),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                icon: Image.asset(
                  "assets/images/shield.png",
                  scale: 1,
                ),
                onPressed: () => HomeViewModel().navigatetoScore()),
            label: 'ScoreBoard',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                icon: Image.asset(
                  "assets/images/job.png",
                  scale: 1,
                ),
                onPressed: () {
                  HomeViewModel().navigatetoJobs();
                }),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                icon: Image.asset(
                  "assets/images/openAI.png",
                  scale: 1,
                ),
                onPressed: () {
                  HomeViewModel().navigateToOpenAI();
                }),
            label: 'Beta',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                icon: Image.asset(
                  "assets/images/profile.png",
                  scale: 1,
                ),
                onPressed: () {
                  HomeViewModel().navigatetoProfile();
                }),
            label: 'Profile',
          ),
        ]);
  }
}
