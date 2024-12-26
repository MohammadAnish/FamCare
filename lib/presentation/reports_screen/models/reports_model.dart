import '../../../core/app_export.dart';
import 'article_item_model.dart';
import 'listbloodgroupt_item_model.dart';

/// This class is used in the [reports_screen] screen.

// ignore_for_file: must_be_immutable

class ReportsModel {
  List<ListbloodgrouptItemModel> listbloodgrouptItemList = [
    ListbloodgrouptItemModel(
      bloodGroupImage: ImageConstant.img4753012BloodD,
      bloodGroupText: "Blood Group",
      bloodGroupValue: "A+",
    ),
    ListbloodgrouptItemModel(
      bloodGroupImage: ImageConstant.imgWeightLiftingUpSvgrepoCom,
      bloodGroupText: "Weight",
      bloodGroupValue: "103lbs",
    ),
  ];

  List<ArticleItemModel> articleItemList = [
    ArticleItemModel(
      generalReportTe: "General report",
      dateText: "Jul 10, 2023",
    ),
    ArticleItemModel(
      generalReportTe: "General report",
      dateText: "Jul 5, 2023",
    ),
  ];
}
