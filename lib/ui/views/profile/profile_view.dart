import 'package:app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: scaffoldBackgroundColor,
          appBar: AppBar(
            title: const Text("Profile"),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  viewModel.logout();
                },
                icon: const Icon(Icons.logout),
              ),
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      // height: 70,
                                      child: Text(
                                    "Sachin",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  )),
                                  const Text("rs.rathodsachin@gmail.com"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1678931884462-312c820d3e67?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2831&q=80",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 250,
                              child: OutlinedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.unfold_less_rounded),
                                  label: const Text("Invite Friends")),
                            ),
                            SizedBox(
                                height: 60,
                                width: 100,
                                child: IconButton(
                                    onPressed: () {
                                      viewModel.navigateToRecruitmentScreen();
                                    },
                                    icon: const Icon(Icons.share))),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 43, 63, 78),
                    height: 25,
                    thickness: 2,
                    indent: 5,
                    endIndent: 5,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: double.infinity,
                    // color: Colors.amber,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "Stat",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                            height: 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    StatBtn(
                                        statIcon: Icons.polyline_outlined,
                                        statInfo: "Consistency",
                                        statValue: "135",
                                        statFunction: () {}),
                                    StatBtn(
                                        statIcon: Icons.first_page_sharp,
                                        statInfo: "Total Points",
                                        statValue: "14557",
                                        statFunction: () {})
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    StatBtn(
                                        statIcon: Icons.leaderboard,
                                        statInfo: "Current Level",
                                        statValue: "Emerald",
                                        statFunction: () {}),
                                    StatBtn(
                                        statIcon: Icons.circle,
                                        statInfo: "Top Ranking",
                                        statValue: "4",
                                        statFunction: () {}),
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}

class StatBtn extends StatelessWidget {
  const StatBtn({
    required this.statIcon,
    required this.statInfo,
    required this.statValue,
    required this.statFunction,
    super.key,
  });
  final IconData statIcon;
  final String statValue, statInfo;
  final Function statFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: statFunction(),
      child: Container(
          height: 50,
          width: 160,
          decoration: BoxDecoration(
              // color: Colors.amber,
              border:
                  Border.all(color: const Color.fromARGB(31, 233, 228, 228)),
              borderRadius: BorderRadius.circular(4)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    statIcon,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    statValue,
                    style: const TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 85, 173, 245)),
                  ),
                ],
              ),
              Text(
                statInfo,
                style: const TextStyle(
                    fontSize: 12, color: Color.fromARGB(66, 154, 170, 241)),
              )
            ],
          )),
    );
  }
}
