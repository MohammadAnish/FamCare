import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/healthtracking_item_model.dart';

// ignore_for_file: must_be_immutable
class HealthtrackingItemWidget extends StatelessWidget {
  HealthtrackingItemWidget(this.healthtrackingItemModelObj, {Key? key})
      : super(key: key);

  HealthtrackingItemModel healthtrackingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: healthtrackingItemModelObj.heartRateImage!,
            height: 32.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 14.h,
              right: 16.h,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            healthtrackingItemModelObj.heartRateText!,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Text(
            healthtrackingItemModelObj.heartRateValue!,
            style: CustomTextStyles.titleMediumBlueA200,
          ),
        ],
      ),
    );
  }
}
