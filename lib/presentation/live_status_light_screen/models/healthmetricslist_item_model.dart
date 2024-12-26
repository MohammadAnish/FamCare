import '../../../core/app_export.dart';

/// This class is used in the [healthmetricslist_item_widget] screen.

// ignore_for_file: must_be_immutable

class HealthmetricslistItemModel {
  HealthmetricslistItemModel({
    this.settingsIcon,
    this.bloodSugarText,
    this.eightyText,
    this.mgDlText,
    this.normalText,
    this.normalImage,
    this.id,
  }) {
    settingsIcon = settingsIcon ?? ImageConstant.imgSettingsYellow800;
    bloodSugarText = bloodSugarText ?? "Blood Sugar";
    eightyText = eightyText ?? "80";
    mgDlText = mgDlText ?? "mg / dL";
    normalText = normalText ?? "Normal";
    normalImage = normalImage ?? ImageConstant.imgGroup11;
    id = id ?? "";
  }

  String? settingsIcon;
  String? bloodSugarText;
  String? eightyText;
  String? mgDlText;
  String? normalText;
  String? normalImage;
  String? id;
}
