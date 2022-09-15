import 'package:flutter/cupertino.dart';

import '../model/user_account_modal.dart';
import '../services/api_services.dart';

class UserProvider extends ChangeNotifier {
  final APIservices apiService = APIservices();
  List<UserAccountModal> userData = <UserAccountModal>[];

  void getUser() async {
    userData = await apiService.getUserData();
    notifyListeners();
  }
}
