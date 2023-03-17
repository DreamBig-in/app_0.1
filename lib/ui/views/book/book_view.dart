import 'package:app/enums/button_type.dart';
import 'package:app/ui/common/app_colors.dart';
import 'package:app/ui/common/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:stacked/stacked.dart';

import 'book_viewmodel.dart';

class BookView extends StackedView<BookViewModel> {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BookViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Unit 1",
        ),
      ),
      backgroundColor: scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 66, 75, 78)))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
                  child: Markdown(
                    onTapLink: (text, href, title) {
                      viewModel.launchInApp(href!);
                    },
                    data: viewModel.dartBasics,
                    selectable: true,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Let's explore",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 84, 172, 244)),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReUsedBtn(
                                title: "Dart Pad",
                                onClickAction: () {
                                  viewModel
                                      .navigateToMarkDown(viewModel.dartPad);
                                },
                                buttonType: ButtonType.success,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReUsedBtn(
                                title: "Variables",
                                onClickAction: () {
                                  viewModel
                                      .navigateToMarkDown(viewModel.variables);
                                },
                                buttonType: ButtonType.success,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReUsedBtn(
                                title: "Built-in Types",
                                onClickAction: () {
                                  viewModel.navigateToMarkDown(
                                      viewModel.builtinTypes);
                                },
                                buttonType: ButtonType.success,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReUsedBtn(
                                title: "Functions",
                                onClickAction: () {
                                  viewModel
                                      .navigateToMarkDown(viewModel.functions);
                                },
                                buttonType: ButtonType.success,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReUsedBtn(
                                title: "Operators",
                                onClickAction: () {
                                  viewModel
                                      .navigateToMarkDown(viewModel.operators);
                                },
                                buttonType: ButtonType.success,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReUsedBtn(
                                title: "Control Flow Statements",
                                onClickAction: () {
                                  viewModel.navigateToMarkDown(
                                      viewModel.flowStatements);
                                },
                                buttonType: ButtonType.success,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  BookViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BookViewModel();
}
