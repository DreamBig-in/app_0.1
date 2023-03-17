import 'package:app/enums/button_type.dart';
import 'package:app/file_exporter.dart';

class ReUsedBtn extends StatelessWidget {
  ReUsedBtn({
    required this.title,
    required this.onClickAction,
    required this.buttonType,
    super.key,
  });
  final String title;
  Function onClickAction;
  ButtonType buttonType;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              color: buttonType == ButtonType.success
                  ? successTextColordark
                  : buttonType == ButtonType.failed
                      ? failedTextColor
                      : kcMediumGrey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: buttonType == ButtonType.success
                  ? successTextColor
                  : buttonType == ButtonType.failed
                      ? failedTextColor
                      : kcMediumGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 20,
                    color: scaffoldBackgroundColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      onTap: () => onClickAction(),
    );
  }
}
