import 'package:flutter/material.dart';
import '../models/doctor_detail_model.dart';

/// A provider class for the DoctorDetailScreen.
///
/// This provider manages the state of the DoctorDetailScreen, including the
/// current doctorDetailModelObj

// ignore_for_file: must_be_immutable
class DoctorDetailProvider extends ChangeNotifier {
  DoctorDetailModel doctorDetailModelObj = DoctorDetailModel();

  DateTime? selectedDatesFromCalendar;


  @override
  void dispose() {
    super.dispose();
  }
}



