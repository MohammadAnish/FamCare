import 'package:flutter/material.dart';
import '../models/appointment_model.dart';

/// A provider class for the AppointmentScreen.
/// This provider manages the state of the AppointmentScreen, including the 
/// current appointmentModelObj.
// ignore_for_file: must_be_immutable
class AppointmentProvider extends ChangeNotifier {
  AppointmentModel appointmentModelObj = AppointmentModel();

  @override
  void dispose() {
    super.dispose();
  }
}
