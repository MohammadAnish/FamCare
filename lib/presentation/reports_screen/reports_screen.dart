import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'models/article_item_model.dart';
import 'models/listbloodgroupt_item_model.dart';
import 'provider/reports_provider.dart';
import 'widgets/article_item_widget.dart';
import 'widgets/listbloodgroupt_item_widget.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({Key? key}) : super(key: key);

  @override
  ReportsScreenState createState() => ReportsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ReportsProvider(),
      child: const ReportsScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class ReportsScreenState extends State<ReportsScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            children: [
              _buildHealthMetrics(context),
              SizedBox(height: 20.h),
              _buildLatestReports(context),
              SizedBox(height: 4.h),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigation(context),
        ),
      ),
    );
  }

  /// Builds the health metrics section
  Widget _buildHealthMetrics(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 24.h, right: 20.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 4.h, right: 8.h),
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 4.h),
            decoration: AppDecoration.gradientCyan400ToPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            width: double.maxFinite,
            child: Row(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 100.h,
                    margin: EdgeInsets.only(top: 14.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_heart_rate2".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Text(
                                "lbl_97".tr,
                                style: theme.textTheme.displayLarge,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 14.h),
                                  child: Text(
                                    "lbl_bpm".tr,
                                    style: CustomTextStyles.bodyMediumGray90002_1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 24.h),
                CustomImageView(
                  imagePath: ImageConstant.imgVector12,
                  height: 68.h,
                  width: 136.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            height: 144.h,
            width: 314.h,
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: Consumer<ReportsProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 22.h);
                  },
                  itemCount: provider.reportsModelObj.listbloodgrouptItemList.length,
                  itemBuilder: (context, index) {
                    ListbloodgrouptItemModel model =
                        provider.reportsModelObj.listbloodgrouptItemList[index];
                    return ListbloodgrouptItemWidget(model);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the latest reports section
  Widget _buildLatestReports(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_latest_report".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 14.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Consumer<ReportsProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 14.h);
                  },
                  itemCount: provider.reportsModelObj.articleItemList.length,
                  itemBuilder: (context, index) {
                    ArticleItemModel model =
                        provider.reportsModelObj.articleItemList[index];
                    return ArticleItemWidget(model);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the bottom navigation bar
  Widget _buildBottomNavigation(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              navigatorKey.currentContext!, getCurrentRoute(type));
        },
      ),
    );
  }

  /// Handles route navigation based on bottom navigation click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.profileInitialPage;
      case BottomBarEnum.Reports:
        return AppRoutes.homePage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }
}
