import 'package:flutter/material.dart';
import 'package:untitled/presentation/forgot_password_screen/provider/forgot_password_provider.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  ForgotPasswordScreenState createState() => ForgotPasswordScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgotPasswordProvider(),
      child: ForgotPasswordScreen(),
    );
  }
}

class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 20.h),
              _buildUserInputSection(context),
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
        margin: EdgeInsets.only(
          left: 38.h,
          top: 14.h,
          bottom: 17.h,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_forgot_password".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserInputSection(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 24.h, right: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(right: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Selector<ForgotPasswordProvider, TextEditingController?>(
                  selector: (context, provider) => provider.enterUserIdOneController,
                  builder: (context, enterUserIdController, child) {
                    return CustomTextFormField(
                      controller: enterUserIdController,
                      hintText: "msg_enter_your_user".tr,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(24.h, 16.h, 14.h, 16.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 22.h,
                          width: 24.h,
                          //prefixConstraints: BoxConstraints(maxHeight: 56.h),     ////change_done
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 16.h,
                      ),
                    );
                  },
                ),
                SizedBox(height: 24.h),
                Selector<ForgotPasswordProvider, TextEditingController?>(
                  selector: (context, provider) => provider.enterOtpOneController,
                  builder: (context, enterOtpController, child) {
                    return CustomTextFormField(
                      controller: enterOtpController,
                      hintText: "msg_enter_otp".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(24.h, 16.h, 14.h, 16.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArcticonsotphelper,
                          height: 22.h,
                          width: 28.h,
                          //prefixConstraints: BoxConstraints(maxHeight: 56.h),     ////change_done
                        ),
                      ),
                      obscureText: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 16.h,
                      ),
                      validator: (value) {
                        if (value == null || !isValidPassword(value, isRequired: true)) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                    );
                  },
                ),
                SizedBox(height: 40.h),
                CustomElevatedButton(
                  text: "lbl_confirm".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles.gradientCyanToPrimaryTL28Decoration,
                  onPressed: () {
                    _onTapConfirm(context);
                  },
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_don_t_have_an_account".tr,
                          style: CustomTextStyles.titleSmallGray900,
                        ),
                        TextSpan(
                          text: "lbl_sign_up".tr,
                          style: CustomTextStyles.titleSmallBlueA20001,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  void _onTapConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
