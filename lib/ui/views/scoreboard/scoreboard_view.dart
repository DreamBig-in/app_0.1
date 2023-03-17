import 'dart:ui';

import 'package:app/file_exporter.dart';
import 'package:app/ui/common/buttons.dart';
import 'package:app/ui/common/mock_data.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'scoreboard_viewmodel.dart';

class ScoreboardView extends StackedView<ScoreboardViewModel> {
  const ScoreboardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ScoreboardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 150,
                width: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        BronzeIcon(),
                        LockedIcon(),
                        LockedIcon(),
                      ],
                    ))),
            Text(
              'Bronze League',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white70),
            ),
            Text(
              'Practice makes perfect',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.amber),
            ),
            const Divider(
              color: Colors.white54,
              thickness: 2,
            ),
            Container(
                height: 450,
                width: double.infinity,
                color: scaffoldBackgroundColor,
                child: ListView.builder(
                    itemCount: scoreboard.length,
                    itemBuilder: ((context, index) => Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 75,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    horizontalSpaceMedium,
                                    Text(
                                      scoreboard[index]['number'].toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(color: Colors.white),
                                    ),
                                    horizontalSpaceTiny,
                                    const CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 25,
                                      child: Icon(
                                        Icons.person,
                                        size: 30,
                                      ),
                                    ),
                                    horizontalSpaceTiny,
                                    Text(
                                      scoreboard[index]['name'].toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(color: Colors.white),
                                    ),
                                    const SizedBox(width: 80),
                                    Text(
                                      scoreboard[index]['score'].toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(color: Colors.white),
                                    ),
                                    horizontalSpaceTiny,
                                    Text(
                                      "points",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.white10,
                                thickness: 1,
                              )
                            ],
                          ),
                        ))))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(
        currentindex: 1,
      ),
    );
  }

  @override
  ScoreboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ScoreboardViewModel();
}
