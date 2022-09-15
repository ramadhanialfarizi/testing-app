import '../model/user_account_modal.dart';
import 'package:dio/dio.dart';

class APIservices {
  Future<List<UserAccountModal>> getUserData([String page = "2"]) async {
    try {
      final response =
          // ignore: prefer_interpolation_to_compose_strings
          await Dio().get('https://reqres.in/api/users?page=' + page);
      if (response.statusCode == 200) {
        //return UserAccountModal.fromJson(jsonDecode(response.data));
        List<dynamic> dataList =
            (response.data as Map<String, dynamic>)['data'];

        List<UserAccountModal> userList = [];
        for (int loop = 0; loop < dataList.length; loop++) {
          userList.add(UserAccountModal.fromJson(dataList[loop]));
        }
        return userList;
      } else {
        throw Exception('failed to load data');
      }
    } catch (e) {
      rethrow;
      //throw Exception(e.toString());
    }
  }
}
