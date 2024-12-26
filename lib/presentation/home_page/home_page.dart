import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'models/topdoctorsgrid_item_model.dart';
import 'provider/home_provider.dart';
import 'widgets/topdoctorsgrid_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: HomePage(),
    );
  }
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 754.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup2Onerrorcontainer754x296,
                    height: 754.h,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 62.h),
                  ),

                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 682.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 30.h,
                                top: 50.h,
                              ),
                              child: Text(
                                "msg_how_is_it_going".tr,
                                style: CustomTextStyles.labelLargeGray90002,
                              ),
                            ),
                          ),
                          Container(
                            height: 682.h,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: 594.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Opacity(
                                          opacity: 0.64,
                                          child: CustomImageView(
                                            imagePath:
                                            ImageConstant.imgGradientBlueA,
                                            height: 594.h,
                                            width: double.maxFinite,
                                          ),
                                        ),
                                        _buildWelcomeSection(context)
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 452.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          width: double.maxFinite,
                                          padding: EdgeInsets.all(20.h),
                                          decoration: AppDecoration
                                              .fillOnErrorContainer
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL20,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 8.h),
                                                child: Selector<HomeProvider,
                                                    TextEditingController?>(
                                                  selector: (context,
                                                      provider) =>
                                                  provider.searchController,
                                                  builder: (context,
                                                      searchController, child) {
                                                    return CustomSearchView(
                                                      controller:
                                                      searchController,
                                                      hintText:
                                                      "msg_search_doctor_drugs"
                                                          .tr,
                                                      contentPadding:
                                                      EdgeInsets.fromLTRB(
                                                          24.h,
                                                          10.h,
                                                          12.h,
                                                          10.h),
                                                    );
                                                  },
                                                ),
                                              ),
                                              SizedBox(height: 20.h),
                                              _buildTopDoctorsGrid(context),
                                              SizedBox(height: 28.h),
                                              _buildHealthArticlesRow(context),
                                              SizedBox(height: 6.h),
                                              Container(
                                                width: double.maxFinite,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 8.h),
                                                child: _buildCovidImpactArticle(
                                                  context,
                                                  imageThree: ImageConstant
                                                      .imgRectangle460,
                                                  theimpactof:
                                                  "msg_the_25_healthiest"
                                                      .tr,
                                                  jul102023:
                                                  "lbl_jun_10_20223".tr,
                                                  time: "lbl_5min_read".tr,
                                                  iconlybold: ImageConstant
                                                      .imgIconlyBoldBookmark,
                                                ),
                                              ),
                                              SizedBox(height: 32.h)
                                            ],

                                          ),
                                        ),
                                      ),
                                      _buildCovidImpactRow(context)
                                    ],
                                  ),
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
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return IntrinsicHeight(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 238.h,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 20.h,
            right: 20.h,
          ),
          padding: EdgeInsets.symmetric(horizontal: 4.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 14.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse78,
                      height: 48.h,
                      width: 48.h,
                      radius: BorderRadius.circular(
                        24.h,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      "lbl_welcome".tr,
                      style: CustomTextStyles.titleMediumMedium,
                    ),
                    Text(
                      "lbl_nitin".tr,
                      style: CustomTextStyles.bodyLargePoppinsGray90002,
                    )
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgYoungWomanDoc,
                height: 238.h,
                width: 160.h,
                alignment: Alignment.center,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopDoctorsGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 16.h,
      ),
      child: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 79.h,
              crossAxisCount: 3,
              mainAxisSpacing: 36.h,
              crossAxisSpacing: 36.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: provider.homeModelObj.topdoctorsgridItemList.length,
            itemBuilder: (context, index) {
              TopdoctorsgridItemModel model =
              provider.homeModelObj.topdoctorsgridItemList[index];
              return TopdoctorsgridItemWidget(
                model,
                onTapImgTopDoctorsImage: () {
                  onTapImgTopDoctorsImage(context);
                },
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildHealthArticlesRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_health_article".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.bodySmallCyan400,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCovidImpactRow(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        height: 66.h,
        margin: EdgeInsets.only(
          left: 24.h,
          right: 20.h,
        ),
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Row(
          children: [
            Expanded(
              child: _buildCovidImpactArticle(
                context,
                imageThree: ImageConstant.imgRectangle954,
                theimpactof: "msg_the_impact_of_covid_19".tr,
                jul102023: "lbl_jul_10_2023".tr,
                time: "lbl_5min_read".tr,
                iconlybold: ImageConstant.imgIconlyBoldBookmark14x14,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildCovidImpactArticle(
      BuildContext context, {
        required String imageThree,
        required String theimpactof,
        required String jul102023,
        required String time,
        required String iconlybold,
      }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.h,
      ),
      decoration: AppDecoration.outlineGray90002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: imageThree,
            height: 64.h,
            width: 64.h,
            radius: BorderRadius.circular(8.h),
            margin: EdgeInsets.only(bottom: 4.h),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 6.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    theimpactof,
                    style: CustomTextStyles.bodyMediumPoppinsBlack900,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  SizedBox(height: 6.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          jul102023,
                          style: CustomTextStyles.bodySmallGray90002,     ////change_done
                        ),
                      ),
                      SizedBox(width: 12.h),
                      Text(
                        time,
                        style: CustomTextStyles.bodySmallGray90002_1,      ////change_done
                      ),
                      CustomImageView(
                        imagePath: iconlybold,
                        height: 12.h,
                        width: 12.h,
                        margin: EdgeInsets.only(
                          left: 10.h,
                          bottom: 4.h,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _buildBottomNavigation(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
          NavigatorService.navigatorKey.currentContext!,
          getCurrentRoute(type),
        );
      },
    );
  }
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.profileInitialPage;
      case BottomBarEnum.Reports:
        return AppRoutes.homePage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }
  /// Navigates to the topDoctorsScreen when the action is triggered.
  onTapImgTopDoctorsImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.topDoctorsScreen,
    );
  }
}
