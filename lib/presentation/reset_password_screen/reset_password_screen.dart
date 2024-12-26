import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'provider/reset_password_provider.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  ResetPasswordScreenState createState() => ResetPasswordScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ResetPasswordProvider(),
      child: ResetPasswordScreen(),
    );
  }
}

class ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 22.h),
              _buildPasswordInputSection(context),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgGroup2Onerrorcontainer198x262,
                height: 198.h,
                width: 262.h,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 62.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeft,
        margin: EdgeInsets.only(left: 38.h, top: 16.h, bottom: 15.h),
      ),
      centerTitle: true,
      title: AppbarTitle(text: "lbl_reset_password".tr),
    );
  }

  /// Section Widget
  Widget _buildOldPasswordInput(BuildContext context) {
    return Consumer<ResetPasswordProvider>(
      builder: (context, provider, child) {
        return CustomTextFormField(
          controller: provider.oldPasswordInputController,
          hintText: "msg_enter_your_old_password".tr,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 16.h, 14.h, 16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgTrophy,
              height: 22.h,
              width: 24.h,
            ),
          ),
          prefixConstraints: BoxConstraints(maxHeight: 56.h),
          suffix: InkWell(
            onTap: () {
              provider.changePasswordVisibility();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(22.h, 16.h, 24.h, 16.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSettingsGray90002,
                height: 22.h,
                width: 24.h,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(maxHeight: 56.h),
          obscureText: provider.isShowPassword,
          contentPadding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.h),
          validator: (value) {
            if (value == null || !isValidPassword(value, isRequired: true)) {
              return "err_msg_please_enter_valid_password";
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNewPasswordInput(BuildContext context) {
    return Consumer<ResetPasswordProvider>(
      builder: (context, provider, child) {
        return CustomTextFormField(
          controller: provider.newPasswordInputController,
          hintText: "msg_enter_new_password".tr,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 16.h, 14.h, 16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgTrophy,
              height: 22.h,
              width: 24.h,
            ),
          ),
          prefixConstraints: BoxConstraints(maxHeight: 56.h),
          suffix: InkWell(
            onTap: () {
              provider.changePasswordVisibility1();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(22.h, 16.h, 24.h, 16.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 22.h,
                width: 24.h,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(maxHeight: 56.h),
          obscureText: provider.isShowPassword1,
          contentPadding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.h),
          validator: (value) {
            if (value == null || !isValidPassword(value, isRequired: true)) {
              return "err_msg_please_enter_valid_password";
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordInput(BuildContext context) {
    return Selector<ResetPasswordProvider, TextEditingController?>(
      selector: (context, provider) => provider.confirmPasswordInputController,
      builder: (context, confirmPasswordInputController, child) {
        return CustomTextFormField(
          controller: confirmPasswordInputController,
          hintText: "msg_confirm_new_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 16.h),
          validator: (value) {
            if (value == null || !isValidPassword(value, isRequired: true)) {
              return "err_msg_please_enter_valid_password";
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCreateNewPasswordButton(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_create_new_password".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientCyanToPrimaryTL28Decoration,
      onPressed: () {
        onTapCreateNewPasswordButton(context);
      },
    );
  }

  /// Section Widget
  Widget _buildPasswordInputSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 24.h, right: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: Column(
              children: [
                _buildOldPasswordInput(context),
                SizedBox(height: 24.h),
                _buildNewPasswordInput(context),
                SizedBox(height: 14.h),
                SizedBox(
                  height: 56.h,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTrophy,
                        height: 24.h,
                        width: 24.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 24.h),
                      ),
                      _buildConfirmPasswordInput(context),
                    ],
                  ),
                ),
                SizedBox(height: 28.h),
                _buildCreateNewPasswordButton(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapCreateNewPasswordButton(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.signInScreen);
  }
}
