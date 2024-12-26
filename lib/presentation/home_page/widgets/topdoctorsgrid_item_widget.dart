import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/topdoctorsgrid_item_model.dart';

// ignore_for_file: must_be_immutable
class TopdoctorsgridItemWidget extends StatelessWidget {
  TopdoctorsgridItemWidget(this.topdoctorsgridItemModelObj,
      {Key? key, this.onTapImgTopDoctorsImage})
      : super(key: key);

  TopdoctorsgridItemModel topdoctorsgridItemModelObj;
  VoidCallback? onTapImgTopDoctorsImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: topdoctorsgridItemModelObj.topDoctorsImage!,
          height: 44.h,
          width: double.maxFinite,
          margin: EdgeInsets.only(
            left: 20.h,
            right: 18.h,
          ),
          onTap: () {
            onTapImgTopDoctorsImage?.call();
          },
        ),
        SizedBox(height: 10.h),
        Text(
          topdoctorsgridItemModelObj.topDoctorsText!,
          style: CustomTextStyles.bodyMediumGray90002_1,
        ),
      ],
    );
  }
}
