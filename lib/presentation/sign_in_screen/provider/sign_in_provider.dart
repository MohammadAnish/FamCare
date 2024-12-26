import 'package:flutter/material.dart';
import '../models/sign_in_model.dart';

/// A provider class for the SignInScreen.
///
/// This provider manages the state of the SignInScreen, including the
/// current signInModelObj.
class SignInProvider extends ChangeNotifier {
  // Controllers for user ID and password input fields
  TextEditingController userIdInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();

  // Model object for sign-in
  SignInModel signInModelObj = SignInModel();

  // Visibility state for the password field
  bool isShowPassword = true;

  @override
  void dispose() {
    // Dispose of controllers to free up resources
    userIdInputController.dispose();
    passwordInputController.dispose();
    super.dispose();
  }

  /// Toggles the visibility of the password field
  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
