import 'package:flutter/material.dart';
import 'package:untitled/widgets/custom_elevated_button.dart';
import '../../../core/app_export.dart';
import '../models/doctordetail_item_model.dart';

// ignore_for_file: must_be_immutable
class DoctordetailItemWidget extends StatelessWidget {
  DoctordetailItemWidget(this.doctordetailItemModelObj, CustomElevatedButton customElevatedButton, {Key? key})
      : super(
          key: key,
        );

  DoctordetailItemModel doctordetailItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.h,
      ),
      decoration: AppDecoration.outlineBlueA20001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Text(
        doctordetailItemModelObj.time!,
        textAlign: TextAlign.center,
        style: CustomTextStyles.bodySmallBlueA20001_1,
      ),
    );
  }
}



