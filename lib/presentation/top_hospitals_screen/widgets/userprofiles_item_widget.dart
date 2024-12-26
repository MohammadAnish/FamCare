import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/userprofiles_item_model.dart';

// ignore_for_file: must_be_immutable
class UserprofilesItemWidget extends StatelessWidget {
  UserprofilesItemWidget(this.userprofilesItemModelObj,
      {Key? key, this.onTapUserprofile})
      : super(key: key);

  UserprofilesItemModel userprofilesItemModelObj;

  VoidCallback? onTapUserprofile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserprofile?.call();
      },
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.outlineGray90002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: userprofilesItemModelObj.userImage!,
              height: 94.h,
              width: 100.h,
              alignment: Alignment.bottomCenter,
            ),
            SizedBox(width: 8.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userprofilesItemModelObj.userName!,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    userprofilesItemModelObj.userSpecializat!,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  SizedBox(height: 4.h),
                  _buildUserRatingFortis(context),
                  SizedBox(height: 4.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLinkedinGray90002,
                        height: 12.h,
                        width: 12.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          userprofilesItemModelObj.userLocationTex!,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserRatingFortis(BuildContext context) {
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
