import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier {
  bool _isPasswordVissible = false;
  bool get isPasswordVisible => _isPasswordVissible;

  void passVisibleFunc() {
    _isPasswordVissible = !_isPasswordVissible;
    notifyListeners();
  }
}
