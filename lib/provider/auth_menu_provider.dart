import 'package:flutter/material.dart';

class AuthMenuProvider extends ChangeNotifier {
  TextEditingController etUserNameRegister = TextEditingController();
  TextEditingController etEmailRegister = TextEditingController();
  TextEditingController etPasswordRegister = TextEditingController();

  TextEditingController etEmailLogin = TextEditingController();
  TextEditingController etPasswordLogin = TextEditingController();

  String errMessage = '';

  bool isLogin = true;

  bool loginValidation() {
    errMessage = '';
    if (etEmailLogin.text.isEmpty || etPasswordLogin.text.isEmpty) {
      errMessage = "All Field Must Filled";
      return false;
    } else {
      return true;
    }
  }

  bool registerValidation() {
    if (etEmailRegister.text.isEmpty ||
        etPasswordRegister.text.isEmpty ||
        etUserNameRegister.text.isEmpty) {
      errMessage = "All Field Must Filled";
      return false;
    } else {
      if (etPasswordRegister.text.length < 8) {
        errMessage = "Password Must 8 Character or Higher";
        return false;
      } else {
        return true;
      }
    }
  }

  void changeMenu(bool newValue) {
    isLogin = newValue;
    notifyListeners();
  }
}
