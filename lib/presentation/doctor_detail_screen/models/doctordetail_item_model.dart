
/// This class is used in the [doctordetail_item_widget] screen.

// ignore_for_file: must_be_immutable
class DoctordetailItemModel {
  DoctordetailItemModel({this.time, this.id}) {
    time = time ?? "09:00 AM";
    id = id ?? "";
  }

  String? time;

  String? id;
}


