import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class MarkdownViewModel extends BaseViewModel {
  final String markData;
  MarkdownViewModel({required this.markData});

//   String mdstring = """
// # Markdown is the **best**!

// * It has lists.
// * It has [links - FlutterCampus.com](https://www.fluttercampus.com).
// * It has _so much more_ hello how are you lorem epsum doller...

// * It has lists.
// * It has [links - google.com](https://www.google.com).
// * It has _so much more_ hello how are you lorem epsum doller...
//     * It has [links - google.com](https://www.blogspot.com).
// * It has _so much more_ hello how are you lorem epsum doller...

// """;

  Future<void> launchInApp(String myUrl) async {
    final Uri uri = Uri.parse(myUrl);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    )) {
      throw Exception('Could not launch $uri');
    }
  }
}
