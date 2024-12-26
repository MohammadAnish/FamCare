import '../../../core/app_export.dart';

/// This class is used in the [topdoctorsgrid_item_widget] screen.
// ignore_for_file: must_be_immutable

class TopdoctorsgridItemModel {
  TopdoctorsgridItemModel({String? topDoctorsImage, String? topDoctorsText, String? id})
      : topDoctorsImage = topDoctorsImage ?? ImageConstant.imgGroup165,
        topDoctorsText = topDoctorsText ?? "Top Doctors",
        id = id ?? "";

  String? topDoctorsImage;
  String? topDoctorsText;
  String? id;
}
