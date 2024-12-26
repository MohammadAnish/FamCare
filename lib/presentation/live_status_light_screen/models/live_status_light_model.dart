import '../../../core/app_export.dart';
import 'healthmetricslist_item_model.dart';

// ignore_for_file: must_be_immutable

class LiveStatusLightModel {
  List<HealthmetricslistItemModel> healthmetricslistItemList = [
    HealthmetricslistItemModel(
      settingsIcon: ImageConstant.imgSettingsYellow800,
      bloodSugarText: "Blood Sugar",
      eightyText: "80",
      mgDlText: "mg / dL",
      normalText: "Normal",
      normalImage: ImageConstant.imgGroup11,
    ),
    HealthmetricslistItemModel(
      settingsIcon: ImageConstant.imgVector,
      bloodSugarText: "Heart Rate",
      eightyText: "98",
      mgDlText: "bpm",
      normalText: "Normal",
      normalImage: ImageConstant.imgGroup29,
    ),
    HealthmetricslistItemModel(
      bloodSugarText: "Blood Pressure",
      normalText: "Normal",
      normalImage: ImageConstant.imgGroup30,
    ),
    HealthmetricslistItemModel(
      bloodSugarText: "Body Temperature",
      normalText: "Normal",
      normalImage: ImageConstant.imgGroup11RedA20001,
    ),
    HealthmetricslistItemModel(
      bloodSugarText: "Respiratory Rate",
      eightyText: "15",
      mgDlText: "rpm",
      normalText: "Normal",
      normalImage: ImageConstant.imgGroup30PurpleA400,
    ),
  ];
}
