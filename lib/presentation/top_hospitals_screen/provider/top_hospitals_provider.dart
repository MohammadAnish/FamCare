import 'package:flutter/material.dart';
import '../models/top_hospitals_model.dart';

/// A provider class for the TopHospitalsScreen.
/// This provider manages the state of the TopHospitalsScreen, including the
/// current topHospitalsModelObj

// ignore_for_file: must_be_immutable

class TopHospitalsProvider extends ChangeNotifier {
  TopHospitalsModel topHospitalsModelObj = TopHospitalsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
