import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'models/healthmetricslist_item_model.dart';
import 'provider/live_status_light_provider.dart';
import 'widgets/healthmetricslist_item_widget.dart';

class LiveStatusLightScreen extends StatefulWidget {
  const LiveStatusLightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LiveStatusLightScreenState createState() => LiveStatusLightScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LiveStatusLightProvider(),
      child: LiveStatusLightScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class LiveStatusLightScreenState extends State<LiveStatusLightScreen> {

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6.h),
                _buildNavigationRow(context),
                SizedBox(height: 42.h),
                _buildUserInfoColumn(context),
                SizedBox(height: 48.h),
                _buildHealthMetricsList(context),
                SizedBox(height: 32.h),
                _buildZipcodeStack(context),
                SizedBox(height: 70.h),
                _buildChartRow(context)
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigationBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: Text(
              "lbl_home".tr,
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: Text(
              "lbl_support".tr,
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          Spacer(
            flex: 35,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "lbl_my_account".tr,
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          Spacer(
            flex: 64,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup37,
            height: 24.h,
            width: 24.h,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserInfoColumn(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            right: 20.h,
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: _buildContactInfoRow(
                  context,
                  age: "lbl_name".tr,
                  fortyfive: "lbl_user_name".tr,
                  contact: "lbl_gender".tr,
                  mobileNo: "lbl_male".tr,
                ),
              ),
              SizedBox(height: 24.h),
              SizedBox(
                width: double.maxFinite,
                child: _buildContactInfoRow(
                  context,
                  age: "lbl_age".tr,
                  fortyfive: "lbl_45".tr,
                  contact: "lbl_contact".tr,
                  mobileNo: "lbl_1234567890".tr,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHealthMetricsList(BuildContext context) {
    return SizedBox(
      height: 262.h,
      width: 344.h,
      child: Consumer<LiveStatusLightProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 14.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 40.h,
              );
            },
            itemCount: provider
                .liveStatusLightModelObj.healthmetricslistItemList.length,
            itemBuilder: (context, index) {
              HealthmetricslistItemModel model = provider
                  .liveStatusLightModelObj.healthmetricslistItemList[index];
              return HealthmetricslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup559,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 28.h),
          CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 158.h,
            width: double.maxFinite,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildZipcodeStack(BuildContext context) {
    return Container(
      height: 252.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          IntrinsicHeight(
            child: SizedBox(
              height: 252.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 30.h,
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 20.h,
                                  child: Text(
                                    "lbl_1000".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: CustomTextStyles.bodySmallBlack900,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.h),
                              Container(
                                height: 1.h,
                                width: 4.h,
                                margin: EdgeInsets.only(top: 4.h),
                                decoration: BoxDecoration(
                                  color: appTheme.black900,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 28.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 14.h,
                                  child: Text(
                                    "lbl_750".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: CustomTextStyles.bodySmallBlack900,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.h),
                              Container(
                                height: 1.h,
                                width: 4.h,
                                margin: EdgeInsets.only(top: 10.h),
                                decoration: BoxDecoration(
                                  color: appTheme.black900,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 28.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 14.h,
                                  child: Text(
                                    "lbl_500".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: CustomTextStyles.bodySmallBlack900,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.h),
                              Container(
                                height: 1.h,
                                width: 4.h,
                                margin: EdgeInsets.only(top: 10.h),
                                decoration: BoxDecoration(
                                  color: appTheme.black900,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 28.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 14.h,
                                  child: Text(
                                    "lbl_250".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: CustomTextStyles.bodySmallBlack900,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.h),
                              Container(
                                height: 1.h,
                                width: 4.h,
                                margin: EdgeInsets.only(top: 10.h),
                                decoration: BoxDecoration(
                                  color: appTheme.black900,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 28.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "lbl_0".tr,
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 1.h,
                                  width: 4.h,
                                  margin: EdgeInsets.only(
                                    left: 4.h,
                                    bottom: 2.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.black900,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  VerticalDivider(
                    width: 1.h,
                    thickness: 1.h,
                    color: appTheme.black900,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 28.h),
            padding: EdgeInsets.symmetric(vertical: 4.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup33,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 10.h), _buildColumn(context)],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChartRow(BuildContext context) {
    return Container(
      width: 334.h,
      margin: EdgeInsets.only(left: 24.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40.h,
            margin: EdgeInsets.only(bottom: 34.h),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_1000".tr,
                          textAlign: TextAlign.right,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                      SizedBox(width: 4.h),
                      Container(
                        height: 1.h,
                        width: 6.h,
                        margin: EdgeInsets.only(top: 4.h),
                        decoration: BoxDecoration(
                          color: appTheme.black900,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 36.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_750".tr,
                        textAlign: TextAlign.right,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 1.h,
                          width: 6.h,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            bottom: 10.h,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 36.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_500".tr,
                        textAlign: TextAlign.right,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      SizedBox(width: 4.h),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 1.h,
                          width: 6.h,
                          margin: EdgeInsets.only(bottom: 10.h),
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 36.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_250".tr,
                        textAlign: TextAlign.right,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      SizedBox(width: 4.h),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 1.h,
                          width: 6.h,
                          margin: EdgeInsets.only(bottom: 10.h),
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 36.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_0".tr,
                        textAlign: TextAlign.right,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 1.h,
                          width: 6.h,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            bottom: 10.h,
                        //textAlign: TextAlign.right,        ////change_done
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          VerticalDivider(
            width: 1.h,
            thickness: 1.h,
            color: appTheme.black900,
            indent: 4.h,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 204.h,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 4.h),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup319,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroupLightGreen800,
                          height: 204.h,
                          width: double.maxFinite,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 266.h,
                    margin: EdgeInsets.only(left: 24.h),
                    child: Row(
                      children: [
                        Container(
                          width: 334.h,
                          padding: EdgeInsets.symmetric(horizontal: 26.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 8.h,
                                width: 1.h,
                                margin: EdgeInsets.only(right: 2.h),
                                decoration: BoxDecoration(
                                  color: appTheme.black900,
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                "lbl_0".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodySmallBlack900,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 60.h,
                          padding: EdgeInsets.symmetric(horizontal: 26.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 8.h,
                                width: 1.h,
                                decoration: BoxDecoration(
                                  color: appTheme.black900,
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                "lbl_1".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodySmallBlack900,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 62.h,
                          padding: EdgeInsets.symmetric(horizontal: 26.h),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 8.h,
                                  width: 1.h,
                                  margin: EdgeInsets.only(right: 2.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.black900,
                                  ),
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                "lbl_2".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodySmallBlack900,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 60.h,
                          padding: EdgeInsets.symmetric(horizontal: 26.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 8.h,
                                width: 1.h,
                                margin: EdgeInsets.only(right: 2.h),
                                decoration: BoxDecoration(
                                  color: appTheme.black900,
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                "lbl_3".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodySmallBlack900,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 60.h,
                          padding: EdgeInsets.symmetric(horizontal: 26.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 8.h,
                                width: 1.h,
                                margin: EdgeInsets.only(right: 2.h),
                                decoration: BoxDecoration(
                                  color: appTheme.black900,
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                "lbl_4".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodySmallBlack900,
                              )
                            ],
                          ),
                        ),
                        _buildColumnvector(
                          context,
                          seven: "lbl_5".tr,
                        ),
                        _buildColumnvector1(
                          context,
                          eight: "lbl_6".tr,
                        ),
                        _buildColumnvector(
                          context,
                          seven: "lbl_7".tr,
                        ),
                        _buildColumnvector1(
                          context,
                          eight: "lbl_8".tr,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorBlack900,
                              height: 8.h,
                              width: 1.h,
                              margin: EdgeInsets.only(right: 2.h),
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              "lbl_9".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallBlack900,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigationBar(BuildContext context) {
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

  /// Common widget
  Widget _buildColumnvector(
    BuildContext context, {
    required String seven,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlack900,
            height: 8.h,
            width: 1.h,
            margin: EdgeInsets.only(right: 2.h),
          ),
          SizedBox(height: 12.h),
          Text(
            seven,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodySmallBlack900.copyWith(
              color: appTheme.black900,
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildContactInfoRow(
    BuildContext context, {
    required String age,
    required String fortyfive,
    required String contact,
    required String mobileNo,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Text(
              age,
              style: CustomTextStyles.labelLargeMulishBlack900.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Text(
              fortyfive,
              style: CustomTextStyles.labelLargeMulishBlack900.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 80.h),
          child: Text(
            contact,
            style: CustomTextStyles.labelLargeMulishBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            mobileNo,
            style: CustomTextStyles.labelLargeMulishBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildColumnvector1(
    BuildContext context, {
    required String eight,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlack900,
            height: 8.h,
            width: 1.h,
            margin: EdgeInsets.only(right: 2.h),
          ),
          SizedBox(height: 12.h),
          Text(
            eight,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodySmallBlack900.copyWith(
              color: appTheme.black900,
            ),
          )
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
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