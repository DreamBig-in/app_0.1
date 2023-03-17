// import 'dart:math';

import 'package:app/enums/button_type.dart';
import 'package:app/ui/common/buttons.dart';
import 'package:flutter/material.dart';
import 'package:app/ui/common/app_colors.dart';
import 'package:app/ui/common/ui_helpers.dart';
import 'package:stacked_services/stacked_services.dart';

class NoticeSheet extends StatelessWidget {
  final Function(SheetResponse)? completer;
  final SheetRequest request;
  const NoticeSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
        color: Color(0xff263238),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 40,
            child: Row(
              children: [
                Icon(request.data == true ? Icons.check_circle : Icons.cancel,
                    color: request.data == true
                        ? successTextColor
                        : failedTextColor,
                    size: 30),
                horizontalSpaceSmall,
                Text(
                  request.data == true ? "Right Answer" : "Wrong Answer",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: request.data == true
                          ? successTextColor
                          : failedTextColor),
                ),
              ],
            ),
          ),
          verticalSpaceSmall,
          request.data == true
              ? Container()
              : Text(
                  request.customData,
                  style: TextStyle(fontSize: 18, color: failedTextColor),
                ),
          verticalSpaceMedium,
          ReUsedBtn(
              title: request.data == true ? "Continue" : "Got It",
              onClickAction: () {
                Navigator.pop(context);
              },
              buttonType: request.data == true
                  ? ButtonType.success
                  : ButtonType.failed),
          verticalSpaceLarge,
        ],
      ),
    );
  }
}
