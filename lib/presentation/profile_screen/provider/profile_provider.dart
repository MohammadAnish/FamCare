import 'package:flutter/material.dart';
import '../models/profile_initial_model.dart';
import '../models/profile_model.dart';

/// A provider class for the ProfileScreen.
///
/// This provider manages the state of the ProfileScreen, including the
/// current profileModelObj and profileInitialModelObj.
class ProfileProvider extends ChangeNotifier { 
  ProfileModel profileModelObj = ProfileModel();
  ProfileInitialModel profileInitialModelObj = ProfileInitialModel();

  @override
  void dispose() {
    super.dispose();
  }
}
