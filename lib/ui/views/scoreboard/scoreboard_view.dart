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
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Scoreboard 🏆',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            const Divider(
              color: Colors.white54,
              thickness: 2,
            ),
            SizedBox(
                height: 120,
                width: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        BronzeIcon(),
                        LockedIcon(),
                        LockedIcon(),
                        LockedIcon(),
                        LockedIcon(),
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
            Text(
              '7🔥',
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
                height: 420,
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
                                    horizontalSpaceMedium,
                                    const CircleAvatar(
                                      backgroundColor: Colors.amber,
                                      radius: 20,
                                      child: Icon(
                                        Icons.catching_pokemon,
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
                                          .titleLarge!
                                          .copyWith(color: Colors.white),
                                    ),
                                    horizontalSpaceTiny,
                                    Text(
                                      "points",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
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
