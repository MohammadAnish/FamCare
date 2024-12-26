import 'package:flutter/material.dart';
import '../models/top_doctors_model.dart';

/// A provider class for the TopDoctors Screen.
/// 
/// This provider manages the state of the TopDoctors Screen, including the
/// current topDoctorsModelObj.
class TopDoctorsProvider extends ChangeNotifier {
  TopDoctorsModel topDoctorsModelObj = TopDoctorsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
