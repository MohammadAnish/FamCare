import 'package:flutter/material.dart';
import '../models/forgot_password_model.dart';

/// A provider class for the ForgotPasswordScreen.
///
/// This provider manages the state of the ForgotPasswordScreen, including the 
/// current forgotPasswordModelObj.
// ignore_for_file: must_be_immutable
class ForgotPasswordProvider extends ChangeNotifier {
  TextEditingController enterUserIdOneController = TextEditingController();
  TextEditingController enterOtpOneController = TextEditingController();
  ForgotPasswordModel forgotPasswordModelObj = ForgotPasswordModel();

  @override
  void dispose() {
    enterUserIdOneController.dispose();
    enterOtpOneController.dispose();
    super.dispose();
  }
}
