import '../../../core/app_export.dart';
import 'topdoctorsgrid_item_model.dart';

// ignore_for_file: must_be_immutable

class HomeModel {
  List<TopdoctorsgridItemModel> topdoctorsgridItemList = [
    TopdoctorsgridItemModel(
      topDoctorsImage: ImageConstant.imgGroup165,
      topDoctorsText: "Top Doctors",
    ),
    TopdoctorsgridItemModel(
      topDoctorsImage: ImageConstant.imgGroup167,
      topDoctorsText: "Hospitals",
    ),
    TopdoctorsgridItemModel(
      topDoctorsImage: ImageConstant.imgGroup165,
      topDoctorsText: "Top Hospitals",
    ),
    TopdoctorsgridItemModel(
      topDoctorsImage: ImageConstant.imgGroup165,
      topDoctorsText: "Lab Reports",
    ),
    TopdoctorsgridItemModel(
      topDoctorsText: "Live Status",
    ),
  ];
}
