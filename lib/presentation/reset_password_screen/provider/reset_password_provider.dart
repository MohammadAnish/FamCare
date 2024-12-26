import 'package:flutter/material.dart';
import '../models/reset_password_model.dart';

/// A provider class for the ResetPasswordScreen.
///
/// This provider manages the state of the Reset Password Screen, including the
/// current resetPasswordModelObj.
class ResetPasswordProvider extends ChangeNotifier {
  TextEditingController oldPasswordInputController = TextEditingController();
  TextEditingController newPasswordInputController = TextEditingController();
  TextEditingController confirmPasswordInputController = TextEditingController();
  
  ResetPasswordModel resetPasswordModelObj = ResetPasswordModel();
  
  bool isShowPassword = true;
  bool isShowPassword1 = true;

  @override
  void dispose() {
    oldPasswordInputController.dispose();
    newPasswordInputController.dispose();
    confirmPasswordInputController.dispose();
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
