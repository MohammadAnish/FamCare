import 'package:flutter/material.dart';
import '../models/registration_model.dart';

/// A provider class for the RegistrationScreen.
///
/// This provider manages the state of the RegistrationScreen, including the
/// current registrationModelObj.
// ignore_for_file: must_be_immutable
class RegistrationProvider extends ChangeNotifier {
  TextEditingController nameInputController = TextEditingController();
  TextEditingController emailInputController = TextEditingController();
  TextEditingController phoneNumberInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();
  TextEditingController hospitalNameInputController = TextEditingController();
  TextEditingController licenseNumberInputController = TextEditingController();
  TextEditingController hospitalIdUploadController = TextEditingController();

  RegistrationModel registrationModelObj = RegistrationModel();

  bool isShowPassword = true;
  bool patientWeight = false;

  @override
  void dispose() {
    nameInputController.dispose();
    emailInputController.dispose();
    phoneNumberInputController.dispose();
    passwordInputController.dispose();
    hospitalNameInputController.dispose();
    licenseNumberInputController.dispose();
    hospitalIdUploadController.dispose();
    super.dispose();
  }

  void onSelected(dynamic value) {
    for (var element in registrationModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changeCheckBox(bool value) {
    patientWeight = value;
    notifyListeners();
  }
}

