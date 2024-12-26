import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/article_item_model.dart';

// ignore_for_file: must_be_immutable
class ArticleItemWidget extends StatelessWidget {
  ArticleItemWidget(this.articleItemModelObj, {Key? key}) : super(key: key);

  ArticleItemModel articleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.h,
      ),
      decoration: AppDecoration.outlineGray900021.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 52.h,
            width: 54.h,
            padding: EdgeInsets.all(14.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame5,
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  articleItemModelObj.generalReportTe!,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  articleItemModelObj.dateText!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelMediumGray90002,
                ),
              ],
            ),
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgUserGray90002,
            height: 20.h,
            width: 20.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 8.h),
          ),
        ],
      ),
    );
  }
}
