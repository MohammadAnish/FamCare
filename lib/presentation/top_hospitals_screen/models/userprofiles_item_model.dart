import '../../../core/app_export.dart';

/// This class is used in the [userprofiles_item_widget] screen.

// ignore_for_file: must_be_immutable

class UserprofilesItemModel {
  UserprofilesItemModel({
    this.userImage,
    this.userName,
    this.userSpecializat,
    this.userLocationTex,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgRectangle964;
    userName = userName ?? "Fortis";
    userSpecializat = userSpecializat ?? "Chardiologist";
    userLocationTex = userLocationTex ?? "800m away";
    id = id ?? "";
  }

  String? userImage;
  String? userName;
  String? userSpecializat;
  String? userLocationTex;
  String? id;
}
