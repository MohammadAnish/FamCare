import 'package:flutter/material.dart';
import '../models/reports_model.dart';

/// A provider class for the ReportsScreen.
///
/// This provider manages the state of the ReportsScreen, including the
/// current reportsModelObj.
class ReportsProvider extends ChangeNotifier {
  ReportsModel reportsModelObj = ReportsModel();

  @override
  void dispose() {
    super.dispose();
  }

  // Add any additional methods for managing state or actions here
  // Example:
  // void updateReports(ReportsModel newModel) {
  //   reportsModelObj = newModel;
  //   notifyListeners();
  // }
}
