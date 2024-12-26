import '../../../core/app_export.dart';

/// This class is used in the [healthmetricslist1_item_widget] screen.

// ignore_for_file: must_be_immutable

class Healthmetricslist1ItemModel {
  Healthmetricslist1ItemModel({
    this.settingsIcon,
    this.bloodSugarText,
    this.eightyText,
    this.mgDlText,
    this.normalText,
    this.normalImage,
    this.id,
  }) {
    settingsIcon ??= ImageConstant.imgSettingsOrangeA200;
    bloodSugarText ??= "Blood Sugar";
    eightyText ??= "80";
    mgDlText ??= "mg / dL";
    normalText ??= "Normal";
    normalImage ??= ImageConstant.imgGroup11Orange300;
    id ??= "";
  }

  String? settingsIcon;
  String? bloodSugarText;
  String? eightyText;
  String? mgDlText;
  String? normalText;
  String? normalImage;
  String? id;
}
