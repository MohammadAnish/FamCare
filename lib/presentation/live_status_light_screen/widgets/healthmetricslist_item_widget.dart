import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/healthmetricslist_item_model.dart';

// ignore_for_file: must_be_immutable
class HealthmetricslistItemWidget extends StatelessWidget {
  HealthmetricslistItemWidget(this.healthmetricslistItemModelObj, {Key? key})
      : super(key: key);

  HealthmetricslistItemModel healthmetricslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 212.h,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 8.h,
      ),
      decoration: AppDecoration.outlineGray30002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 6.h),
            child: Row(
              children: [
                CustomIconButton(
                  height: 58.h,
                  width: 58.h,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillOrange,
                  child: CustomImageView(
                    imagePath: healthmetricslistItemModelObj.settingsIcon!,
                  ),
                ),
                SizedBox(width: 16.h),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 14.h),
                    child: Text(
                      healthmetricslistItemModelObj.bloodSugarText!,
                      style: CustomTextStyles.titleMediumMulishBlack900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Text(
                  healthmetricslistItemModelObj.eightyText!,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      bottom: 8.h,
                    ),
                    child: Text(
                      healthmetricslistItemModelObj.mgDlText!,
                      style: CustomTextStyles.titleMediumMulishGray600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 2.h,
            ),
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Text(
              healthmetricslistItemModelObj.normalText!,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeMulishBlack900,
            ),
          ),
          SizedBox(height: 14.h),
          CustomImageView(
            imagePath: healthmetricslistItemModelObj.normalImage!,
            height: 82.h,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}
