import 'package:flutter/material.dart';
import '../models/cover_screen_sample_two_model.dart';

/// A provider class for the CoverScreenSampleTwoScreen.
/// This provider manages the state of the CoverScreenSampleTwoScreen, 
/// including the current `coverScreenSampleTwoModelObj`.
// ignore_for_file: must_be_immutable
class CoverScreenSampleTwoProvider extends ChangeNotifier {
  CoverScreenSampleTwoModel coverScreenSampleTwoModelObj = CoverScreenSampleTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
