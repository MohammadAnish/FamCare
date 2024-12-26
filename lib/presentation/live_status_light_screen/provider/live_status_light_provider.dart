import 'package:flutter/material.dart';
import '../models/live_status_light_model.dart';

/// A provider class for the LiveStatusLightScreen.
/// 
/// This provider manages the state of the LiveStatusLightScreen, including the 
/// current liveStatusLightModelObj.
// ignore_for_file: must-be-immutable
class LiveStatusLightProvider extends ChangeNotifier {
  LiveStatusLightModel liveStatusLightModelObj = LiveStatusLightModel();

  @override
  void dispose() { 
    super.dispose();
  }
}
