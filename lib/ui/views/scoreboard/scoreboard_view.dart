import 'dart:ui';

import 'package:app/file_exporter.dart';
import 'package:app/ui/common/buttons.dart';
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
                height: 500,
                width: double.infinity,
                color: scaffoldBackgroundColor,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: ((context, index) => Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 75,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    horizontalSpaceTiny,
                                    Text(
                                      '1',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(color: Colors.white),
                                    ),
                                    horizontalSpaceTiny,
                                    CircleAvatar(
                                      radius: 30,
                                    ),
                                    horizontalSpaceTiny,
                                    Text(
                                      "Pratik",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(color: Colors.white),
                                    ),
                                    SizedBox(width: 100),
                                    Text(
                                      "100",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(color: Colors.white),
                                    ),
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
    );
  }

  @override
  ScoreboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ScoreboardViewModel();
}
