import 'dart:convert';
import 'dart:math';

import 'package:app/enums/api_type.dart';
import 'package:app/file_exporter.dart';
import 'package:app/services/api_request.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;

class ChatgptViewModel extends BaseViewModel {
  List<String> messages = [];
  void handleSubmitted(String text) async {
    messages.add(text);
    notifyListeners();
    ApiRequest _apirequest = ApiRequest();

    final http.Response responseText =
        await _apirequest.getResponse("/content/chat/", ApiType.post, body: {
      "message": text,
    });
    debugPrint(responseText.body);
    if (responseText.body != Null) {
      messages.add(responseText.body);
      rebuildUi();
    } else {
      debugPrint("responseText is null");
    }

    debugPrint("responseText is null");
  }
}
