import '../../../core/app_export.dart';

/// This class is used in the [listbloodgroupt_item_widget] screen.

// ignore_for_file: must_be_immutable

class ListbloodgrouptItemModel {
  ListbloodgrouptItemModel({
    this.bloodGroupImage,
    this.bloodGroupText,
    this.bloodGroupValue,
    this.id,
  }) {
    bloodGroupImage = bloodGroupImage ?? ImageConstant.img4753012BloodD;
    bloodGroupText = bloodGroupText ?? "Blood Group";
    bloodGroupValue = bloodGroupValue ?? "A+";
    id = id ?? "";
  }

  String? bloodGroupImage;
  String? bloodGroupText;
  String? bloodGroupValue;
  String? id;
}
