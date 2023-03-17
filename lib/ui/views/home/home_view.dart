import 'dart:developer';

import "package:app/file_exporter.dart";
import 'package:app/ui/common/mock_data.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: SafeArea(
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: const EdgeInsets.only(
                                left: 20, top: 30, bottom: 30),
                            decoration: BoxDecoration(
                              color: appBarBackgroundColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: SizedBox(
                              height: 80,
                              child: ListView.builder(
                                  itemCount: coursesEnrolled.length + 1,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: ((context, index) {
                                    return index == coursesEnrolled.length
                                        ? Column(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  viewModel
                                                      .navigateToOnBoarding();
                                                },
                                                child: Container(
                                                  width: 70,
                                                  height: 48,
                                                  margin: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                        color:
                                                            supressedColorText,
                                                        width: 2),
                                                  ),
                                                  child: Icon(
                                                    Icons.add,
                                                    color: supressedColorText,
                                                  ),
                                                ),
                                              ),
                                              verticalSpaceTiny,
                                              const Text(
                                                "Courses",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              Container(
                                                width: 70,
                                                height: 50,
                                                padding:
                                                    const EdgeInsets.all(3),
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                decoration: BoxDecoration(
                                                  border: index + 1 == 1
                                                      ? Border.all(
                                                          color: selectColor,
                                                          width: 2)
                                                      : const Border(),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Container(
                                                  child: const Image(
                                                    image: AssetImage(
                                                        'assets/images/flutter.gif'),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: supressedColorText,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                ),
                                              ),
                                              verticalSpaceTiny,
                                              const Text(
                                                "Flutter",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          );
                                  })),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/flutter.gif")),
                        color: supressedColorText,
                      ),
                    ),
                  ),
                  TextButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appBarBackgroundColor,
                      ),
                      onPressed: () {},
                      icon: Image.asset("assets/images/fire_streak.png"),
                      label: const Text(
                        "7",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    child: TextButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appBarBackgroundColor,
                        ),
                        onPressed: () {},
                        icon: Image.asset("assets/images/Dimond.png"),
                        label: const Text(
                          "700",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    child: TextButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFF0b1323),
                        ),
                        onPressed: () {
                          viewModel.launchReplitApp();
                        },
                        icon: Image.asset("assets/images/replit.png"),
                        label: const Text(
                          "Replit",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ]),
          ),
        ),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            log("Referhed");
          },
          color: successTextColor,
          backgroundColor: scaffoldBackgroundColor,
          displacement: 10,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: homeviewResponse.length,
              itemBuilder: ((context, mainindex) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: homeviewResponse[mainindex]["chapterCount"] + 1,
                  itemBuilder: (context, index) {
                    return index == 0
                        ? Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 17, vertical: 15),
                            margin: const EdgeInsets.symmetric(vertical: 1),
                            // height: 100,
                            decoration:
                                BoxDecoration(color: appBarBackgroundColor),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Unit ${mainindex + 1}",
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                      verticalSpaceTiny,
                                      Text(
                                        homeviewResponse[mainindex]["unitName"],
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    viewModel.navigateToBook();
                                  },
                                  child: const SizedBox(
                                    width: 50,
                                    child: Icon(
                                      Icons.book,
                                      size: 45,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              log("unit $index clicked");
                              index - 1 == 0
                                  ? viewModel.navigateToQuiz()
                                  : log("disabled");
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 35),
                              height: 120,
                              alignment: (index - 1) % 4 == 0
                                  ? Alignment.center
                                  : (index - 1) % 4 == 1
                                      ? Alignment.topLeft
                                      : (index - 1) % 4 == 2
                                          ? Alignment.center
                                          : Alignment.topRight,
                              child: Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    (index - 1 == 0 && mainindex == 0)
                                        ? Image.asset(
                                            "assets/images/Level.png",
                                            fit: BoxFit.fill,
                                          )
                                        : Image.asset(
                                            "assets/images/disabled_level.png",
                                            fit: BoxFit.fill,
                                          ),
                                    // Add Icon here
                                  ]),
                            ),
                          );
                  },
                );
              })),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: scaffoldBackgroundColor,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  icon: const Icon(Icons.score),
                  onPressed: () {
                    viewModel.navigatetoScore();
                  }),
              label: 'ScoreBoard',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  icon: const Icon(Icons.work),
                  onPressed: () {
                    // TODO: navigate to jobs
                  }),
              label: 'Jobs',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {
                    viewModel.navigatetoProfile();
                  }),
              label: 'Profile',
            ),
          ]),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
