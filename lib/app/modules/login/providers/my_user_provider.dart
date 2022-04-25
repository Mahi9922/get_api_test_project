import 'dart:convert';

import 'package:get/get.dart';

class MyUserProvider extends GetConnect {
  Future<List<dynamic>> getUser() async {
    final response =
        await get("http://192.168.137.223/api/includes/core/v1/test/get-blog");
    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      print(response.body);
      return jsonDecode(response.body['results']);
    }
  }
}
