import 'package:flutter/material.dart';

import '../core/app_export.dart';
import 'base_button.dart';

class CustomOutlinedButton extends BaseButton {
  CustomOutlinedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    this.label,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    Alignment? alignment,
    double? height,
    double? width,
    EdgeInsets? margin,
    required String text,
  }) : super(
          text: text,
          onPressed: onPressed,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          alignment: alignment,
          width: width,
          margin: margin,
        );

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildOutlinedButtonWidget(),
          )
        : _buildOutlinedButtonWidget();
  }

  Widget _buildOutlinedButtonWidget() {
    return Container(
      height: height ?? 56.h,
      width: width ?? double.maxFinite,
      margin: margin,
      decoration: decoration,
      child: OutlinedButton(
        style: buttonStyle,
        onPressed: isDisabled ?? false ? null : onPressed ?? () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (leftIcon != null) leftIcon!,
            if (label != null) label!,
            Text(
              text,
              style: buttonTextStyle ?? theme.textTheme.titleMedium,
            ),
            if (rightIcon != null) rightIcon!,
          ],
        ),
      ),
    );
  }
}
