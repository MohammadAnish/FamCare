import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'provider/onboarding_one_provider.dart';
import '';

class OnboardingOneScreen extends StatefulWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  OnboardingOneScreenState createState() => OnboardingOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingOneProvider(),
      child: OnboardingOneScreen(),
    );
  }
}

class OnboardingOneScreenState extends State<OnboardingOneScreen> {
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
                CustomImageView(
                  imagePath: ImageConstant.imgGroup214,
                  height: 218.h,
                  width: 226.h,
                ),
                SizedBox(height: 16.h),
                _buildLogoSection(context),
                SizedBox(height: 16.h),
                Container(
                  height: 430.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 54.h),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      _buildHeadlineSection(context),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup2Onerrorcontainer,
                        height: 196.h,
                        width: 264.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogoSection(BuildContext context) {
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
              CustomImageView(
                imagePath: ImageConstant.imgLogo76x330,
                height: 57.h,
                width: double.maxFinite,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeadlineSection(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: Text(
              "msg_let_s_get_started".tr,
              style: CustomTextStyles.titleLarge22,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg_login_to_stay_healthy".tr,
              style: CustomTextStyles.bodyLargePoppinsGray90002_1,
            ),
          ),
          SizedBox(height: 40.h),
          CustomElevatedButton(
            width: 250.h,
            text: "lbl_log_in".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientCyanToPrimaryDecoration,
            onPressed: () {
              onTapLogin(context);
            },
          ),
          SizedBox(height: 16.h),
          OutlineGradientButton(
            padding: EdgeInsets.all(1.h),
            strokeWidth: 1.h,
            gradient: LinearGradient(
              begin: Alignment(0.53, 0),
              end: Alignment(0.53, 1),
              colors: [
                appTheme.cyan400,
                appTheme.teal40002,
                theme.colorScheme.primary,
              ],
            ),
            corners: Corners(
              topLeft: Radius.circular(28),
              topRight: Radius.circular(28),
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28),
            ),
            child: CustomOutlinedButton(
              width: 250.h,
              text: "lbl_sign_up".tr,
              buttonStyle: CustomButtonStyles.outline,
              buttonTextStyle: CustomTextStyles.headlineSmallTeal40005,
              onPressed: () {
                onTapSignup(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  void onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.signInScreen);
  }

  /// Navigates to the registrationScreen when the action is triggered.
  void onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.homePage);
  }
}
