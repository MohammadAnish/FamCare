import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listbloodgroupt_item_model.dart';

// ignore_for_file: must_be_immutable
class ListbloodgrouptItemWidget extends StatelessWidget {
  ListbloodgrouptItemWidget(this.listbloodgrouptItemModelObj, {Key? key})
      : super(key: key);

  ListbloodgrouptItemModel listbloodgrouptItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 138.h,
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillGrayB.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: listbloodgrouptItemModelObj.bloodGroupImage!,
            height: 24.h,
            width: 24.h,
          ),
          SizedBox(height: 6.h),
          Text(
            listbloodgrouptItemModelObj.bloodGroupText!,
            style: CustomTextStyles.titleSmallMedium,
          ),
          SizedBox(height: 6.h),
          Text(
            listbloodgrouptItemModelObj.bloodGroupValue!,
            style: CustomTextStyles.headlineLargePoppinsGray90002,
          ),
        ],
      ),
    );
  }
}
