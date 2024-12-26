import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_text_form_field.dart';
import 'models/registration_model.dart';
import 'provider/registration_provider.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  RegistrationScreenState createState() => RegistrationScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegistrationProvider(),
      child: const RegistrationScreen(),
    );
  }
}

class RegistrationScreenState extends State<RegistrationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  SizedBox(height: 22.h),
                  _buildNameInput(context),
                  SizedBox(height: 12.h),
                  _buildEmailInput(context),
                  SizedBox(height: 20.h),
                  _buildPhoneNumberInput(context),
                  SizedBox(height: 20.h),
                  _buildPasswordInput(context),
                  SizedBox(height: 12.h),
                  _buildUserTypeSelection(context),
                  SizedBox(height: 40.h),
                  _buildAdditionalInfo(context),
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
          top: 14.h,
          bottom: 17.h,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_sign_up".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildNameInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Selector<RegistrationProvider, TextEditingController?>(
        selector: (context, provider) => provider.nameInputController,
        builder: (context, nameInputController, child) {
          return CustomTextFormField(
            controller: nameInputController,
            hintText: "lbl_enter_your_name".tr,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 16.h,
            ),
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Selector<RegistrationProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailInputController,
        builder: (context, emailInputController, child) {
          return CustomTextFormField(
            controller: emailInputController,
            hintText: "msg_enter_your_email".tr,
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 16.h,
            ),
            validator: (value) {
              if (value == null || !isValidEmail(value, isRequired: true)) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        right: 6.h,
      ),
      child: Selector<RegistrationProvider, TextEditingController?>(
        selector: (context, provider) => provider.phoneNumberInputController,
        builder: (context, phoneNumberInputController, child) {
          return CustomTextFormField(
            controller: phoneNumberInputController,
            hintText: "msg_enter_your_phone".tr,
            textInputType: TextInputType.phone,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 16.h,
            ),
            validator: (value) {
              if (!isValidPhone(value)) {
                return "err_msg_please_enter_valid_phone_number".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Consumer<RegistrationProvider>(
        builder: (context, provider, child) {
          return CustomTextFormField(
            controller: provider.passwordInputController,
            hintText: "msg_enter_your_password".tr,
            textInputType: TextInputType.visiblePassword,
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
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserTypeSelection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Selector<RegistrationProvider, RegistrationModel?>(
              selector: (context, provider) => provider.registrationModelObj,
              builder: (context, registrationModelObj, child) {
                return CustomDropDown(
                  icon: Container(
                    margin: EdgeInsets.only(left: 22.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 22.h,
                      width: 14.h,
                    ),
                  ),
                  hintText: "msg_choose_your_type".tr,
                  items: registrationModelObj?.dropdownItemList ?? [],
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 16.h,
                  ),
                );
              },
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: Selector<RegistrationProvider, bool?>(
              selector: (context, provider) => provider.patientWeight,
              builder: (context, patientWeight, child) {
                return CustomCheckboxButton(
                  text: "lbl_patient".tr,
                  value: true,
                  padding: EdgeInsets.fromLTRB(22.h, 12.h, 30.h, 12.h),
                  decoration: CustomCheckBoxStyleHelper.outlineGray,
                  onChange: (value) {
                    context.read<RegistrationProvider>().changeCheckBox(value);
                  },
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 4.h),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 14.h,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            width: double.maxFinite,
            child: Row(
              children: [
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .onErrorContainer,
                    borderRadius: BorderRadius.circular(8.h),
                    border: Border.all(
                      color: appTheme.gray90002.withOpacity(0.4),
                      width: 1.5.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "lbl_doctor".tr,
                    style: CustomTextStyles.bodyMediumBlueGray300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLicenseNumberInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Selector<RegistrationProvider, TextEditingController?>(
        selector: (context, provider) => provider.licenseNumberInputController,
        builder: (context, licenseNumberInputController, child) {
          return CustomTextFormField(
            controller: licenseNumberInputController,
            hintText: "lbl_enter_your_license".tr,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 16.h,
            ),
            validator: (value) {
              if (!isNumeric(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildHospitalNameInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Selector<RegistrationProvider, TextEditingController?>(
        selector: (context, provider) => provider.licenseNumberInputController,
        builder: (context, licenseNumberInputController, child) {
          return CustomTextFormField(
            controller: licenseNumberInputController,
            hintText: "lbl_enter_your_license".tr,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 16.h,
            ),
            validator: (value) {
              if (!isNumeric(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildHospitalIdUpload(BuildContext context) {
    return Selector<RegistrationProvider, TextEditingController?>(
      selector: (context, provider) => provider.hospitalIdUploadController,
      builder: (context, hospitalIdUploadController, child) {
        return CustomTextFormField(
          controller: hospitalIdUploadController,
          hintText: "msg_upload_hospital".tr,
          textInputAction: TextInputAction.done,
          alignment: Alignment.topCenter,
          contentPadding: EdgeInsects.fromLTRB(12.h, 18.h, 12.h, 12.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAdditionalInfo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          _buildHospitalNameInput(context),
          SizedBox(height: 10.h),
          _buildLicenseNumberInput(context),
          SizedBox(height: 10.h),
          Container(
            height: 48.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                _buildHospitalIdUpload(context),
                CustomImageView(
                  imagePath: ImageConstant.imgTwitter,
                  height: 24.h,
                  width: 18.h,
                  margin: EdgeInsets.only(left: 22.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EdgeInsects {
  static fromLTRB(double h, double h2, double h3, double h4) {}
}