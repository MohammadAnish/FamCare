import '../../../core/app_export.dart';

/// This class is used in the [userprofileslist_item_widget] screen.

// ignore_for_file: must_be_immutable

class UserprofileslistItemModel {
  UserprofileslistItemModel({
    this.userImage,
    this.doctorName,
    this.specialization,
    this.locationText,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgPexelsCedricF;
    doctorName = doctorName ?? "Dr. Rishi";
    specialization = specialization ?? "Chardiologist";
    locationText = locationText ?? "800m away";
    id = id ?? "";
  }

  String? userImage;
  String? doctorName;
  String? specialization;
  String? locationText;
  String? id;
}
