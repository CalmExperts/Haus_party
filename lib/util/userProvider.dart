
import 'package:flutter/foundation.dart';
import 'package:haus_party/model/user.dart';


class UserProvider with ChangeNotifier {
  User _user = new User();

  User get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}