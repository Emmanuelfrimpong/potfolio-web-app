import 'package:flutter/material.dart';

class AppProviders with ChangeNotifier {
  bool isLoggedIn=false;

  void updateLogin(bool login) {
    isLoggedIn=login;
    notifyListeners();
  }

  bool get userState => isLoggedIn;

}
