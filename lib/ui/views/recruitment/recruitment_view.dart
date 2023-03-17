import 'package:app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/buttons.dart';
import 'recruitment_viewmodel.dart';

class RecruitmentView extends StackedView<RecruitmentViewModel> {
  const RecruitmentView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RecruitmentViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Opportunities"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.19,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(
                              color: const Color.fromARGB(255, 77, 76, 76)),
                          borderRadius: BorderRadius.circular(10)),
                      width: 180,
                      child: const Center(child: Text("Programming")),
                    ),
                  );
                },
              ),
              // color: Colors.amber,
            ),
            SizedBox(
              // color: Colors.amberAccent,
              height: MediaQuery.of(context).size.height * 0.34,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Top Company",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz_outlined))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.24,
                    // color: Colors.black12,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 77, 76, 76)),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 180,
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.amber,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          SizedBox(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  "TVS",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  "20 Job Vacancy",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          221, 216, 214, 214)),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 3.0, horizontal: 10),
                                      child: Text(
                                        "Salary : \$2k-5k/Mo",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                221, 216, 214, 214)),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 3.0, horizontal: 10),
                                      child: Text(
                                        "Remote/Onsite",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                221, 216, 214, 214)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 3.0, horizontal: 10),
                                      child: Center(
                                        child: SizedBox(
                                          width: 200,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            child: const Text("Apply"),
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        255, 61, 61, 61)),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Suggested Job",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz))
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.43,
              // color: Colors.black12,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.17,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(
                              color: const Color.fromARGB(255, 77, 76, 76)),
                          borderRadius: BorderRadius.circular(20)),
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "IT Support",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.0),
                                      child: Text(
                                        "Tumblir",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                221, 216, 214, 214)),
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Text(
                                    "\$1500/Mo",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(
                                            200, 237, 115, 0.867)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.location_on,
                                    color: Color.fromARGB(221, 216, 214, 214),
                                  ),
                                  Text(
                                    "Cinere",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(221, 216, 214, 214)),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Color.fromARGB(221, 216, 214, 214),
                                  ),
                                  Text(
                                    "Internship",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(221, 216, 214, 214)),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.circle,
                                    size: 10,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 20.0, left: 5),
                                    child: Text("3d"),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(
        currentindex: 2,
      ),
    );
  }

  @override
  RecruitmentViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RecruitmentViewModel();
}
