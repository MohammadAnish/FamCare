import 'package:flutter/material.dart';
import '../models/set_password_model.dart';

/// A provider class for the SetPasswordScreen.
///
/// This provider manages the state of the SetPasswordScreen, including the
/// current SetPasswordModelObj.
class SetPasswordProvider extends ChangeNotifier {
  TextEditingController passwordController = TextEditingController();
  TextEditingController password1Controller = TextEditingController();
  SetPasswordModel setPasswordModelObj = SetPasswordModel();
  bool isShowPassword = true;
  bool isShowPassword1 = true;

  @override
  void dispose() {
    passwordController.dispose();
    password1Controller.dispose();
    super.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changePasswordVisibility1() {
    isShowPassword1 = !isShowPassword1;
    notifyListeners();
  }
}
