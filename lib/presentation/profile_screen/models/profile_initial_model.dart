import '../../../core/app_export.dart';
import '../models/healthtracking_item_model.dart';

/// This class is used in the [profile_initial_page] screen.

// ignore_for_file: must_be_immutable

class ProfileInitialModel {
  List<HealthtrackingItemModel> healthtrackingItemList = [
    HealthtrackingItemModel(
      heartRateImage: ImageConstant.imgHeartbeat,
      heartRateText: "Heart rate",
      heartRateValue: "215bpm",
    ),
    HealthtrackingItemModel(
      heartRateImage: ImageConstant.imgFire,
      heartRateText: "Calories",
      heartRateValue: "756cal",
    ),
    HealthtrackingItemModel(
      heartRateImage: ImageConstant.img8542616WeightIcon,
      heartRateText: "Weight",
      heartRateValue: "103lbs",
    ),
  ];
}
