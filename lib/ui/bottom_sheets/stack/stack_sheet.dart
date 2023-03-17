import 'package:app/ui/common/mock_data.dart';
import 'package:flutter/material.dart';
import 'package:app/ui/common/app_colors.dart';
import 'package:app/ui/common/ui_helpers.dart';
import 'package:flutter/rendering.dart';
import 'package:stacked_services/stacked_services.dart';

// TODO: Explore the completer fuction and how it works and implement it later
class StackSheet extends StatelessWidget {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const StackSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 30, bottom: 30),
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
                        Container(
                          width: 70,
                          height: 48,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: supressedColorText, width: 2),
                          ),
                          child: Icon(
                            Icons.add,
                            color: supressedColorText,
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
                          padding: const EdgeInsets.all(3),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            border: index + 1 == 1
                                ? Border.all(color: selectColor, width: 2)
                                : const Border(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: supressedColorText,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        verticalSpaceTiny,
                        const Text(
                          "React",
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
  }
}
