import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../domain/facebookauth/facebook_auth_helper.dart';
import '../../domain/googleauth/google_auth_helper.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'provider/sign_in_provider.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  SignInScreenState createState() => SignInScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignInProvider(),
      child: SignInScreen(),
    );
  }
}

class SignInScreenState extends State<SignInScreen> {
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
          child: SingleChildScrollView(
            child: Container(
              height: 684.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup2Onerrorcontainer198x262,
                    height: 198.h,
                    width: 262.h,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        top: 18.h,
                        right: 20.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildUserIdInput(context),
                          SizedBox(height: 24.h),
                          _buildPasswordInput(context),
                          SizedBox(height: 14.h),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 12.h),
                              child: Text(
                                "msg_forgot_password".tr,
                                style: CustomTextStyles.labelLargeBlueA20001,
                              ),
                            ),
                          ),
                          SizedBox(height: 46.h),
                         _buildLoginButton(context),
                          SizedBox(height: 10.h),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_don_t_have_an_account2".tr,
                                  style: CustomTextStyles.bodyMediumGray90002,
                                ),
                                TextSpan(text: " "),
                                TextSpan(
                                  text: "lbl_sign_up2".tr,
                                  style: CustomTextStyles.titleSmallBlueA20001,
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          _buildOrSeparator(context),
                          SizedBox(height: 24.h),
                          _buildGoogleSignIn(context),
                          SizedBox(height: 24.h),
                          _buildFacebookSignIn(context),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
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
          top: 13.h,
          bottom: 18.h,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_log_in".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserIdInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 8.h,
      ),
      child: Selector<SignInProvider, TextEditingController?>(
        selector: (context, provider) => provider.userIdInputController,
        builder: (context, userIdInputController, child) {
          return CustomTextFormField(
            controller: userIdInputController,
            hintText: "msg_enter_your_user".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(24.h, 16.h, 14.h, 16.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 22.h,
                width: 24.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 56.h,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 16.h,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 8.h,
      ),
      child: Consumer<SignInProvider>(
        builder: (context, provider, child) {
          return CustomTextFormField(
            controller: provider.passwordInputController,
            hintText: "msg_enter_your_password".tr,
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
    );
  }

  /// Section Widget
   Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
    text: "lbl_log_in".tr,
   margin: EdgeInsets.only(left: 12.h),
  buttonStyle: CustomButtonStyles.none,
  decoration: CustomButtonStyles.gradientCyanToPrimaryTL28Decoration,

  );


   }

  /// Section Widget
  Widget _buildOrSeparator(BuildContext context) {
    return CustomElevatedButton(
      height: 32.h,
      width: 36.h,
      text: "lbl_or".tr,
      buttonStyle: CustomButtonStyles.fillOnErrorContainer,
      buttonTextStyle: CustomTextStyles.bodyLargePoppinsBlueGray300,
    );
  }

  /// Section Widget
  Widget _buildGoogleSignIn(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_sign_in_with_google".tr,
      margin: EdgeInsets.only(
        left: 8.h,
        right: 4.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 24.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 20.h,
          width: 20.h,
        ),
      ),
      onPressed: () {
        onTapGoogleSignIn(context);
      },
    );
  }

  /// Section Widget
  Widget _buildFacebookSignIn(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_sign_in_with_facebook".tr,
      margin: EdgeInsets.only(
        left: 8.h,
        right: 4.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 26.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 20.h,
          width: 20.h,
        ),
      ),
      onPressed: () {
        onTapFacebookSignIn(context);
      },
    );
  }

  onTapGoogleSignIn(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        // Handle Google sign-in success
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('User data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });

  }

  onTapFacebookSignIn(BuildContext context) async {
    await FacebookAuthHelper()
        .facebookSignInProcess()
        .then((facebookUser) {
          // Handle Facebook sign-in success
        })
        .catchError((onError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(onError.toString())));
        });
  }

  void onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.homePage);
  }
}



