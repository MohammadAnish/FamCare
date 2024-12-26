import 'package:flutter/material.dart';

import '../core/app_export.dart';

extension CustomCheckBoxStyleHelper on CustomCheckboxButton {
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray5002,
        borderRadius: BorderRadius.circular(6.h),
        border: Border.all(
          color: appTheme.gray90002.withOpacity(0.1),
          width: 1.h,
        ),
      );
}

class CustomCheckboxButton extends StatelessWidget {
  CustomCheckboxButton({
    Key? key,
    required this.onChange,
    this.decoration,
    this.alignment,
    this.isRightCheck,
    this.iconSize,
    this.value = false,
    this.text,
    this.width,
    this.padding,
    this.textStyle,
    this.textAlignment,
    this.isExpandedText = false,
  }) : super(key: key);

  final BoxDecoration? decoration;
  final Alignment? alignment;
  final bool? isRightCheck;
  final double? iconSize;
  bool value;
  final Function(bool) onChange;
  final String? text;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextAlign? textAlignment;
  final bool isExpandedText;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildCheckBoxWidget,
          )
        : buildCheckBoxWidget;
  }

  Widget get buildCheckBoxWidget => GestureDetector(
        onTap: () {
          value = !value;
          onChange(value);
        },
        child: Container(
          decoration: decoration,
          width: width,
          padding: padding,
          child: (isRightCheck ?? false) ? rightSideCheckbox : leftSideCheckbox,
        ),
      );

  Widget get leftSideCheckbox => Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: checkboxWidget,
          ),
          isExpandedText ? Expanded(child: textWidget) : textWidget,
        ],
      );

  Widget get rightSideCheckbox => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isExpandedText ? Expanded(child: textWidget) : textWidget,
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: checkboxWidget,
          ),
        ],
      );

  Widget get textWidget => Text(
        text ?? "",
        textAlign: textAlignment ?? TextAlign.start,
        style: textStyle ?? CustomTextStyles.bodyMediumBlueGray300,
      );

  Widget get checkboxWidget => SizedBox(
        height: iconSize ?? 24.h,
        width: iconSize ?? 24.h,
        child: Checkbox(
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          value: value,
          onChanged: (newValue) {
            value = newValue!;
            onChange(value);
          },
        ),
      );
}
