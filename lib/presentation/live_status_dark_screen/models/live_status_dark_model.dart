import '../../../core/app_export.dart';
import 'healthmetricslist1_item_model.dart';

// ignore_for_file: must_be_immutable

class LiveStatusDarkModel {
  List<Healthmetricslist1ItemModel> healthmetricslist1ItemList = [
    Healthmetricslist1ItemModel(
      settingsIcon: ImageConstant.imgSettingsOrangeA200,
      bloodSugarText: "Blood Sugar",
      eightyText: "80",
      mgDlText: "mg / dL",
      normalText: "Normal",
      normalImage: ImageConstant.imgGroup11Orange300,
    ),
    Healthmetricslist1ItemModel(
      settingsIcon: ImageConstant.imgClose,
      bloodSugarText: "Heart Rate",
      eightyText: "98",
      mgDlText: "bpm",
      normalText: "Normal",
      normalImage: ImageConstant.imgGroup29Red300,
    ),
    Healthmetricslist1ItemModel(
      bloodSugarText: "Blood Pressure",
      normalText: "Normal",
      normalImage: ImageConstant.imgGroup30Teal300,
    ),
    Healthmetricslist1ItemModel(
      bloodSugarText: "Body Temperature",
      normalText: "Normal",
      normalImage: ImageConstant.imgGroup11RedA100,
    ),
    Healthmetricslist1ItemModel(
      bloodSugarText: "Respiratory Rate",
      eightyText: "15",
      mgDlText: "rpm",
      normalText: "Normal",
      normalImage: ImageConstant.imgGroup30PurpleA40001,
    ),
  ];
}
