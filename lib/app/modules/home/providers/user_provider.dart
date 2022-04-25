import 'package:get/get.dart';
import 'package:get_api_test_project/app/modules/home/user_model.dart';

class UserProvider extends GetConnect {
  Future<List<dynamic>> getUser() async {
    final response = await get("https://randomuser.me/api/?results=10");
    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      return response.body['results'];
    }
  }
}


//get generate model on home from https://randomuser.me/api/?results=10