import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'provider/payment_success_provider.dart'; // ignore_for_file: must_be_immutable

class PaymentSuccessDialog extends StatefulWidget {
  const PaymentSuccessDialog({Key? key}) : super(key: key);

  @override
  PaymentSuccessDialogState createState() => PaymentSuccessDialogState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentSuccessProvider(),
      child: const PaymentSuccessDialog(),
    );
  }
}

class PaymentSuccessDialogState extends State<PaymentSuccessDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 34.h,
          ),
          decoration: AppDecoration.fillOnErrorContainer.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 12.h),
              Container(
                height: 102.h,
                width: 100.h,
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder50,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkBlueA20001,
                      height: 30.h,
                      width: 40.h,
                      radius: BorderRadius.circular(3.h),
                    )
                  ],
                ),
              ),
              SizedBox(height: 34.h),
              Text(
                "lbl_payment_success".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 4.h),
              Text(
                "msg_your_payment_has".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargePoppinsGray90002_1.copyWith(
                  height: 1.50,
                ),
              ),
              SizedBox(height: 18.h),
              CustomElevatedButton(
                text: "lbl_back_to_home".tr,
                margin: EdgeInsets.symmetric(horizontal: 30.h),
                buttonStyle: CustomButtonStyles.none,
                decoration: CustomButtonStyles.gradientCyanToPrimaryTL281Decoration,
                buttonTextStyle: CustomTextStyles.titleMediumInterOnErrorContainer,
                onPressed: () {
                  // Add your action here
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
