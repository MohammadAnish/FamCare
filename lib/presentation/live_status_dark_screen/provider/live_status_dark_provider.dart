import 'package:flutter/material.dart';
import '../models/live_status_dark_model.dart';

/// A provider class for the LiveStatusDarkScreen.
/// 
/// This provider manages the state of the LiveStatusDarkScreen, including the 
/// current liveStatusDarkModelObj.
// ignore_for_file: must_be_immutable
class LiveStatusDarkProvider extends ChangeNotifier {
  LiveStatusDarkModel liveStatusDarkModelObj = LiveStatusDarkModel();

  @override
  void dispose() {
    super.dispose();
  }
}
