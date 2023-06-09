import 'package:app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'markdown_viewmodel.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownView extends StackedView<MarkdownViewModel> {
  const MarkdownView({Key? key, required this.markData}) : super(key: key);
  final String markData;

  @override
  Widget builder(
    BuildContext context,
    MarkdownViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Markdown(
            onTapLink: (text, href, title) {
              viewModel.launchInApp(href!);
            },
            data: markData,
            selectable: true,
            styleSheet: MarkdownStyleSheet(
              h1: TextStyle(fontSize: 32, color: Colors.amber),
              h1Align: WrapAlignment.center,
              h1Padding: EdgeInsets.symmetric(vertical: 20),
              // h6: TextStyle(fontSize: 40, color: Colors.amber)
            ),
          ),
        ),
      ),
    );
  }

  @override
  MarkdownViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MarkdownViewModel(markData: markData);
}
