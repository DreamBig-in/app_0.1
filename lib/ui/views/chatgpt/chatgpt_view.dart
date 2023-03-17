import 'package:app/app/app.dart';
import 'package:app/ui/common/app_colors.dart';
import 'package:app/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

import 'chatgpt_viewmodel.dart';

class ChatgptView extends StackedView<ChatgptViewModel> {
  const ChatgptView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChatgptViewModel viewModel,
    Widget? child,
  ) {
    var textController = TextEditingController();
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: kcBackgroundColor,
        elevation: 0,
        title: const Text("Flutter God"),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            HomeViewModel().navigatetoHome();
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 112),
                child: ListView.builder(
                  reverse: true,
                  itemCount: viewModel.messages.length,
                  itemBuilder: (context, index) {
                    debugPrint(index.toString());
                    debugPrint(viewModel
                        .messages[viewModel.messages.length - 1 - index]);
                    return (index == 0 &&
                            index % 2 != 0 &&
                            viewModel.messages.length % 2 == 0)
                        ? AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
                            TypewriterAnimatedText(
                                viewModel.messages[
                                    viewModel.messages.length - 1 - index],
                                textAlign: TextAlign.left,
                                textStyle: const TextStyle(fontSize: 15),
                                speed: const Duration(milliseconds: 40)),
                          ])
                        : Container(
                            margin: (index % 2 == 0)
                                ? const EdgeInsets.symmetric(vertical: 10)
                                : const EdgeInsets.all(20),
                            child: Text(
                              viewModel.messages[
                                  viewModel.messages.length - 1 - index],
                              textAlign: (index % 2 == 0)
                                  ? TextAlign.left
                                  : TextAlign.right,
                            ),
                          );
                  },
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Container(
                          height: 60,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                constraints: const BoxConstraints(
                                    minWidth: 100, maxWidth: 500),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff1f2c34)),
                                child: const Text(
                                  "Take my Quiz now",
                                  style: TextStyle(color: Color(0xffe6e9ef)),
                                ),
                              ),
                              Container(
                                constraints: const BoxConstraints(
                                    minWidth: 100, maxWidth: 500),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff1f2c34)),
                                child: const Text(
                                  "Take my Quiz now",
                                  style: TextStyle(color: Color(0xffe6e9ef)),
                                ),
                              ),
                              Container(
                                constraints: const BoxConstraints(
                                    minWidth: 100, maxWidth: 500),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff1f2c34)),
                                child: const Text(
                                  "Take my Quiz now",
                                  style: TextStyle(color: Color(0xffe6e9ef)),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                          child: Row(children: [
                        Expanded(
                          child: TextField(
                            controller: textController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: const Color(0xff1f2c34),
                              hintText: 'Type a message...',
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xff02a785)),
                          child: IconButton(
                            onPressed: () {
                              viewModel.handleSubmitted(textController.text);
                              textController.clear();
                            },
                            icon: const Icon(
                              Icons.send,
                            ),
                          ),
                        )
                      ])),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  ChatgptViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChatgptViewModel();
}
