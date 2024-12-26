import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'provider/set_password_provider.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  SetPasswordScreenState createState() => SetPasswordScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SetPasswordProvider(),
      child: const SetPasswordScreen(),
    );
  }
}

class SetPasswordScreenState extends State<SetPasswordScreen> {
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
              _buildPasswordSection(context),
              const Spacer(),
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

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 62.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeft,
        margin: EdgeInsets.only(
          left: 38.h,
          top: 16.h,
          bottom: 15.h,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_set_password".tr,
      ),
    );
  }

  Widget _buildPasswordSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 24.h, right: 20.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: Consumer<SetPasswordProvider>(
                    builder: (context, provider, child) {
                      return CustomTextFormField(
                        controller: provider.passwordController,
                        hintText: "msg_enter_your_password2".tr,
                        textInputType: TextInputType.visiblePassword,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(24.h, 16.h, 14.h, 16.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgTrophy,
                            height: 22.h,
                            width: 24.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 56.h,
                        ),
                        suffix: InkWell(
                          onTap: () {
                            provider.changePasswordVisibility();
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
                        suffixConstraints: BoxConstraints(
                          maxHeight: 56.h,
                        ),
                        obscureText: provider.isShowPassword,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24.h,
                          vertical: 16.h,
                        ),
                        validator: (value) {
                          if (value == null || !isValidPassword(value, isRequired: true)) {
                            return "err_msg_please_enter_valid_password";
                          }
                          return null;
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: Consumer<SetPasswordProvider>(
                    builder: (context, provider, child) {
                      return CustomTextFormField(
                        controller: provider.password1Controller,
                        hintText: "msg_confirm_your_password".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(24.h, 16.h, 14.h, 16.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgTrophy,
                            height: 22.h,
                            width: 24.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 56.h,
                        ),
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
                        suffixConstraints: BoxConstraints(
                          maxHeight: 56.h,
                        ),
                        obscureText: provider.isShowPassword1,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24.h,
                          vertical: 16.h,
                        ),
                        validator: (value) {
                          if (value == null || !isValidPassword(value, isRequired: true)) {
                            return "err_msg_please_enter_valid_password";
                          }
                          return null;
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 82.h),
                CustomElevatedButton(
                  text: "msg_create_new_password".tr,
                  margin: EdgeInsets.only(left: 8.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles.gradientCyanToPrimaryTL28Decoration,
                  onPressed: () {
                    onTapCreatenew(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onTapCreatenew(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.forgotPasswordScreen);
  }
}
