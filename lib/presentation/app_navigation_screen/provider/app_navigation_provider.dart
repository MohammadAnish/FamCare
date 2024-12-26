import 'package:flutter/material.dart';
import '../models/app_navigation_model.dart';

/// A provider class for the AppNavigationScreen.
///
/// This provider manages the state of the AppNavigationScreen, including
/// the data from `AppNavigationModel`.
class AppNavigationProvider extends ChangeNotifier {
  AppNavigationModel appNavigationModelObj = AppNavigationModel();

  /// Constructor to initialize the provider, if necessary.
  AppNavigationProvider() {
    // Initialization logic, if any.
  }

  /// Example method to update the navigation model.
  void updateNavigationModel(AppNavigationModel newModel) {
    appNavigationModelObj = newModel;
    notifyListeners(); // Notify widgets of state change.
  }

  @override
  void dispose() {
    // Clean up resources, if necessary.
    super.dispose();
  }
}
