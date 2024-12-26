import '../../../core/app_export.dart';
import 'userprofileslist_item_model.dart';

// ignore_for_file: must_be_immutable

class TopDoctorsModel {
  List<UserprofileslistItemModel> userprofileslistItemList = [
    UserprofileslistItemModel(
      userImage: ImageConstant.imgPexelsCedricF,
      doctorName: "Dr. Rishi",
      specialization: "Chardiologist",
      locationText: "800m away",
    ),
    UserprofileslistItemModel(
      userImage: ImageConstant.imgPexelsCedricF96x96,
      doctorName: "Dr. Vaamana",
      specialization: "Dentists",
      locationText: "800m away",
    ),
    UserprofileslistItemModel(
      userImage: ImageConstant.imgPexelsCedricF1,
      doctorName: "Dr. Nallarasi",
      specialization: "Orthopaedic",
      locationText: "800m away",
    ),
    UserprofileslistItemModel(
      userImage: ImageConstant.imgPexelsCedricF2,
      doctorName: "Dr. Nihal",
      specialization: "Chardiologist",
      locationText: "800m away",
    ),
    UserprofileslistItemModel(
      userImage: ImageConstant.imgPexelsCedricF3,
      doctorName: "Dr. Rishita",
      specialization: "Chardiologist",
      locationText: "800m away",
    ),
  ];
}
