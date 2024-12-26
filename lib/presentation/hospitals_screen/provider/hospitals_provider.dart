import 'package:flutter/material.dart';
import '../models/hospitals_model.dart';

/// A provider class for the HospitalsScreen.
/// This provider manages the state of the HospitalsScreen, including the
/// current hospitalsModelObj.

class HospitalsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();
  HospitalsModel hospitalsModelObj = HospitalsModel();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
