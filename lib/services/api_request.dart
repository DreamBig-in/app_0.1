// import 'dart:developer';
// import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../enums/api_type.dart';

// TODO: Choose on either GetStorage or Shared Preferences

class ApiRequest {
  final String baseUrl;
  final String scheme;

  ApiRequest({
    this.baseUrl = "13.233.163.166",
    this.scheme = 'http',
  });

  Future<http.Response> getResponse(String path, ApiType type,
      {Map<String, String>? queryParams,
      Map<String, String>? headers,
      Object? body}) async {
    // final box = GetStorage();
    // if (box.read("token") != null) {
    //   headers ??= {};
    //   headers["Authorization"] = "Token ${box.read("token")}";
    // }
    switch (type) {
      case ApiType.get:
        return await http.get(
            Uri(
              scheme: scheme,
              host: baseUrl,
              path: path,
              queryParameters: queryParams,
            ),
            headers: headers);
      case ApiType.post:
        return await http.post(
            Uri(
              scheme: scheme,
              host: baseUrl,
              path: path,
              queryParameters: queryParams,
            ),
            headers: headers,
            body: body);
      case ApiType.put:
        return await http.put(
            Uri(
              scheme: scheme,
              host: baseUrl,
              path: path,
              queryParameters: queryParams,
            ),
            headers: headers,
            body: body);
      case ApiType.delete:
        return await http.delete(
            Uri(
              scheme: scheme,
              host: baseUrl,
              path: path,
              queryParameters: queryParams,
            ),
            headers: headers,
            body: body);
    }
  }
}
