import '../../../core/app_export.dart';

/// This class is used in the [healthtracking_item_widget] screen.

// ignore_for_file: must-be-immutable

class HealthtrackingItemModel {
  HealthtrackingItemModel({
    this.heartRateImage,
    this.heartRateText,
    this.heartRateValue,
    this.id,
  }) {
    heartRateImage = heartRateImage ?? ImageConstant.imgHeartbeat;
    heartRateText = heartRateText ?? "Heart rate";
    heartRateValue = heartRateValue ?? "215bpm";
    id = id ?? "";
  }

  String? heartRateImage;
  String? heartRateText;
  String? heartRateValue;
  String? id;
}
