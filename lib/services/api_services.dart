import 'dart:convert';

import '../model/user_account_modal.dart';
import 'package:dio/dio.dart';

class APIservices {
  Future<List<UserAccountModal>> getUserData() async {
    try {
      final response = await Dio().get('https://reqres.in/api/users/2');
      if (response.statusCode == 200) {
        //return UserAccountModal.fromJson(jsonDecode(response.data));
        List<UserAccountModal> dataList = (response.data as List)
            .map(
              (e) => UserAccountModal(
                  id: e['data']['id'],
                  email: e['data']['email'],
                  name: e['data']['first_name'] + e['data']['last_name']),
            )
            .toList();
        return dataList;
      } else {
        throw Exception('failed to load data');
      }
    } catch (e) {
      rethrow;
      //throw Exception(e.toString());
    }
  }
}
