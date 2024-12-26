import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/userprofileslist_item_model.dart';

// ignore_for_file: must_be_immutable
class UserprofileslistItemWidget extends StatelessWidget {
  UserprofileslistItemWidget(this.userprofileslistItemModelObj,
      {Key? key, this.onTapUserprofile})
      : super(key: key);

  UserprofileslistItemModel userprofileslistItemModelObj;

  VoidCallback? onTapUserprofile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserprofile?.call();
      },
      child: Container(
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.outlineGray90002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: userprofileslistItemModelObj.userImage!,
              height: 96.h,
              width: 96.h,
              radius: BorderRadius.circular(6.h),
            ),
            SizedBox(width: 14.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userprofileslistItemModelObj.doctorName!,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    userprofileslistItemModelObj.specialization!,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  SizedBox(height: 4.h),
                  _buildDoctorRating(context),
                  SizedBox(height: 4.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLinkedinGray90002,
                        height: 12.h,
                        width: 12.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            userprofileslistItemModelObj.locationText!,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorRating(BuildContext context) {
    return CustomElevatedButton(
      height: 18.h,
      width: 40.h,
      text: "lbl_4_7".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSignal,
          height: 12.h,
          width: 12.h,
        ),
      ),
      buttonTextStyle: CustomTextStyles.labelLargeInterBlueA20001,
    );
  }
}
