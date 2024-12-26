import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'models/healthtracking_item_model.dart';
import 'provider/profile_provider.dart';
import 'widgets/healthtracking_item_widget.dart';

class ProfileInitialPage extends StatefulWidget {
  const ProfileInitialPage({Key? key}) : super(key: key);

  @override
  ProfileInitialPageState createState() => ProfileInitialPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileProvider(),
      child: ProfileInitialPage(),
    );
  }
}

class ProfileInitialPageState extends State<ProfileInitialPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse7890x90,
          radius: BorderRadius.circular(44.h),
        ),
        SizedBox(height: 8.h),
        Text(
          "lbl_ruchita".tr,
          style: CustomTextStyles.labelLargeGray90002SemiBold,
        ),
        SizedBox(height: 20.h),
        _buildHealthTracking(context),
        SizedBox(height: 30.h),
        _buildProfileOptions(context),
        SizedBox(height: 4.h),
      ],
    );
  }

  /// Common widget
  Widget _buildAppointment(
    BuildContext context, {
    required String attachOne,
    required String appointment,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: attachOne,
          height: 90.h,
          width: 90.h,
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.h,
          width: 24.h,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 18.h, bottom: 6.h),
            child: Text(
              appointment,
              style: theme.textTheme.titleMedium!.copyWith(
                color: appTheme.gray90002,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHealthTracking(BuildContext context) {
    return SizedBox(
      height: 76.h,
      width: 296.h,
      child: Consumer<ProfileProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 8.h, right: 12.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0.h),
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.h,
                  color: appTheme.blueA20001.withOpacity(0.13),
                ),
              );
            },
            itemCount: provider.profileInitialModelObj.healthtrackingItemList.length,
            itemBuilder: (context, index) {
              HealthtrackingItemModel model =
                  provider.profileInitialModelObj.healthtrackingItemList[index];
              return HealthtrackingItemWidget(model);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileOptions(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: _buildAppointment(
              context,
              attachOne: ImageConstant.imgFloatingIconBlueA20001,
              appointment: "lbl_my_saved".tr,
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              endIndent: 4.h,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: _buildAppointment(
              context,
              attachOne: ImageConstant.imgAttach,
              appointment: "lbl_appointment".tr,
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              endIndent: 4.h,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: _buildAppointment(
              context,
              attachOne: ImageConstant.imgInfo,
              appointment: "lbl_payment_method".tr,
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              endIndent: 4.h,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: _buildAppointment(
              context,
              attachOne: ImageConstant.imgUser,
              appointment: "lbl_faqs".tr,
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              endIndent: 4.h,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: _buildAppointment(
              context,
              attachOne: ImageConstant.imgPlayBlueA20001,
              appointment: "lbl_logout".tr,
            ),
          ),
        ],
      ),
    );
  }
}
