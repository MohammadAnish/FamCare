import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'provider/live_status_dark_provider.dart';
import 'widgets/healthmetricslist1_item_widget.dart';

class LiveStatusDarkScreen extends StatefulWidget {
  const LiveStatusDarkScreen({Key? key}) : super(key: key);

  @override
  LiveStatusDarkScreenState createState() => LiveStatusDarkScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LiveStatusDarkProvider(),
      child: const LiveStatusDarkScreen(), // Added const here for optimization
    );
  }
}

// ignore_for_file: must_be_immutable
class LiveStatusDarkScreenState extends State<LiveStatusDarkScreen> {
  final GlobalKey<
      NavigatorState> navigatorKey = GlobalKey(); // Added final for immutability

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                _buildNavigationRow(context),
                SizedBox(height: 30.h),
                _buildUserInfoColumn(context),
                SizedBox(height: 44.h),
                _buildHealthMetricsList(context),
                SizedBox(height: 40.h),
                _buildVectorRow(context),
                SizedBox(height: 44.h),
                _buildChartRow(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigation(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h), // Simplified margin
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: Text(
              "lbl_home".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.h, bottom: 2.h),
            // Combined padding for consistency
            child: Text(
              "lbl_support".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: Text(
              "lbl_my_account".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(width: 20.h),
          // Replaced Spacer with SizedBox for specific spacing
          CustomImageView(
            imagePath: ImageConstant.imgBrightness,
            height: 24.h,
            width: 22.h,
          ),
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
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              _buildContactInfoRow(
                context,
                userAgeLabel: "lbl_name".tr,
                userAgeValue: "lbl_user_name".tr,
                userContactLabel: "lbl_gender".tr,
                userContactValue: "lbl_male".tr,
              ),
              SizedBox(height: 24.h),
              _buildContactInfoRow(
                context,
                userAgeLabel: "lbl_age".tr,
                userAgeValue: "lbl_45".tr,
                userContactLabel: "lbl_contact".tr,
                userContactValue: "lbl_1234567890".tr,
              ),
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
      width: 348.h,
      child: Consumer<LiveStatusDarkProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 12.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 40.h),
            itemCount: provider.liveStatusDarkModelObj
                .healthmetricslist1ItemList.length,
            itemBuilder: (context, index) {
              final model = provider.liveStatusDarkModelObj
                  .healthmetricslist1ItemList[index];
              return Healthmetricslist1ItemWidget(model);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorRow(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 12.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 286.h,
                width: 590.h,
                margin: EdgeInsets.only(bottom: 6.h),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    IntrinsicHeight(
                      child: SizedBox(
                        height: 38.h,
                        width: 410.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 240.h,
                              padding: EdgeInsets.symmetric(horizontal: 52.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 2.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Container(
                                          height: 1.h,
                                          width: 4.h,
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme
                                                .onErrorContainer,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 8.h,
                                            width: 1.h,
                                            decoration: BoxDecoration(
                                              color: theme.colorScheme
                                                  .onErrorContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  Text(
                                    "lbl_0".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 108.h,
                              padding: EdgeInsets.symmetric(horizontal: 52.h),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: 8.h,
                                      width: 1.h,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme
                                            .onErrorContainer,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  Text(
                                    "lbl_1".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 60.h,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 8.h,
                                    width: 1.h,
                                    margin: EdgeInsets.only(right: 2.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.onErrorContainer,
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  Text(
                                    "lbl_2".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 256.h, bottom: 32.h),
                        child: Text(
                          "lbl_0".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        height: 28.h,
                        width: 90.h,
                        margin: EdgeInsets.only(bottom: 80.h),
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
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ),
                            Container(
                              height: 1.h,
                              width: 4.h,
                              margin: EdgeInsets.only(left: 4.h, top: 10.h),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onErrorContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 28.h,
                        width: 90.h,
                        margin: EdgeInsets.only(top: 114.h),
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
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ),
                            Container(
                              height: 1.h,
                              width: 4.h,
                              margin: EdgeInsets.only(left: 4.h, top: 10.h),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onErrorContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ),
                    IntrinsicHeight(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 28.h,
                          width: 88.h,
                          margin: EdgeInsets.only(top: 54.h),
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
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ),
                              Container(
                                height: 1.h,
                                width: 4.h,
                                margin: EdgeInsets.only(left: 4.h, top: 10.h),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onErrorContainer,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 28.h,
                          width: 102.h,
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
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ),
                              Container(
                                height: 1.h,
                                width: 4.h,
                                margin: EdgeInsets.only(left: 4.h, top: 4.h),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onErrorContainer,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 272.h, top: 4.h),
                        padding: EdgeInsets.symmetric(vertical: 4.h),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.imgGroup40),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 16.h),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup46),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 28.h),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroupRed200,
                                    height: 158.h,
                                    width: double.infinity,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 6.h),
            _buildVectorColumn1(
              context,
              userRating: "lbl_3".tr,
            ),
            SizedBox(width: 6.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 44.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorOnerrorcontainer,
                    height: 8.h,
                    width: 1.h,
                    margin: EdgeInsets.only(right: 2.h),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    "lbl_4".tr,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            SizedBox(width: 6.h),
            _buildVectorColumn1(
              context,
              userRating: "lbl_5".tr,
            ),
          ],
        )
    );
  }

  /// Section Widget
  Widget _buildChartRow(BuildContext context) {
    return SizedBox(
        width: double.maxFinite,
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
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(width: 4.h),
                        Container(
                          height: 1.h,
                          width: 6.h,
                          margin: EdgeInsets.only(top: 4.h),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onErrorContainer,
                          ),
                        ),
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
                          style: theme.textTheme.bodySmall,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 1.h,
                            width: 6.h,
                            margin: EdgeInsets.only(left: 4.h, bottom: 10.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onErrorContainer,
                            ),
                          ),
                        ),
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
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(width: 4.h),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 1.h,
                            width: 6.h,
                            margin: EdgeInsets.only(bottom: 10.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onErrorContainer,
                            ),
                          ),
                        ),
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
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(width: 4.h),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 1.h,
                            width: 6.h,
                            margin: EdgeInsets.only(bottom: 10.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onErrorContainer,
                            ),
                          ),
                        ),
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
                          style: theme.textTheme.bodySmall,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 1.h,
                            width: 6.h,
                            margin: EdgeInsets.only(left: 4.h, bottom: 10.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onErrorContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            VerticalDivider(
              width: 1.h,
              thickness: 1.h,
              color: theme.colorScheme.onErrorContainer,
              indent: 4.h,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 4.h),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup296),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroupLightGreen80001,
                            height: 204.h,
                            width: double.maxFinite,
                            margin: EdgeInsets.only(left: 24.h),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 288.h,
                      margin: EdgeInsets.only(left: 24.h),
                      child: Row(
                        children: [
                          Container(
                            width: 310.h,
                            padding: EdgeInsets.symmetric(horizontal: 26.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 8.h,
                                  width: 1.h,
                                  margin: EdgeInsets.only(right: 2.h),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onErrorContainer,
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Text(
                                  "lbl_0".tr,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodySmall,
                                ),
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
                                    color: theme.colorScheme.onErrorContainer,
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Text(
                                  "lbl_1".tr,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodySmall,
                                ),
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
                                      color: theme.colorScheme.onErrorContainer,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Text(
                                  "lbl_2".tr,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodySmall,
                                ),
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
                                    color: theme.colorScheme.onErrorContainer,
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Text(
                                  "lbl_3".tr,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodySmall,
                                ),
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
                                    color: theme.colorScheme.onErrorContainer,
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Text(
                                  "lbl_4".tr,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          _buildVectorColumn2(
                            context,
                            seven: "lbl_5".tr,
                          ),
                          _buildVectorColumn(
                            context,
                            eight: "lbl_6".tr,
                          ),
                          _buildVectorColumn2(
                            context,
                            seven: "lbl_7".tr,
                          ),
                          _buildVectorColumn(
                            context,
                            eight: "lbl_8".tr,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant
                                    .imgVectorOnerrorcontainer,
                                height: 8.h,
                                width: 1.h,
                                margin: EdgeInsets.only(right: 2.h),
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                "lbl_9".tr,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }

  /// Section Widget
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

  /// Common widget
  Widget _buildVectorColumn(BuildContext context, {
    required String eight,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorOnerrorcontainer,
            height: 8.h,
            width: 1.h,
            margin: EdgeInsets.only(right: 2.h),
          ),
          SizedBox(height: 12.h),
          Text(
            eight,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.onErrorContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildContactInfoRow(BuildContext context, {
    required String userAgeLabel,
    required String userAgeValue,
    required String userContactLabel,
    required String userContactValue,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Text(
              userAgeLabel,
              style: CustomTextStyles.labelLargeMulishOnErrorContainer.copyWith(
                color: theme.colorScheme.onErrorContainer,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Text(
              userAgeValue,
              style: CustomTextStyles.labelLargeMulishOnErrorContainer.copyWith(
                color: theme.colorScheme.onErrorContainer,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 80.h),
          child: Text(
            userContactLabel,
            style: CustomTextStyles.labelLargeMulishOnErrorContainer.copyWith(
              color: theme.colorScheme.onErrorContainer,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            userContactValue,
            style: CustomTextStyles.labelLargeMulishOnErrorContainer.copyWith(
              color: theme.colorScheme.onErrorContainer,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildVectorColumn1(BuildContext context, {
    required String userRating,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgVectorOnerrorcontainer,
          height: 8.h,
          width: 1.h,
          margin: EdgeInsets.only(right: 2.h),
        ),
        SizedBox(height: 12.h),
        Text(
          userRating,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.onErrorContainer,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildVectorColumn2(BuildContext context, {
    required String seven,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorOnerrorcontainer,
            height: 8.h,
            width: 1.h,
            margin: EdgeInsets.only(right: 2.h),
          ),
          SizedBox(height: 12.h),
          Text(
            seven,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.onErrorContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.profileInitialPage;
      case BottomBarEnum.Reports:
        return AppRoutes.homePage;
      case BottomBarEnum.Notification:
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }
}
