import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../data/models/selectionPopupModel/selection_popup_model.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({
    Key? key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.focusNode,
    this.icon,
    this.autofocus = false,
    this.textStyle,
    this.hintText,
    this.hintStyle,
    this.items,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  final Alignment? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final FocusNode? focusNode;
  final Widget? icon;
  final bool autofocus;
  final TextStyle? textStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final List<SelectionPopupModel>? items;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool filled;
  final FormFieldValidator<SelectionPopupModel>? validator;
  final Function(SelectionPopupModel?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: dropDownWidget,
          )
        : dropDownWidget;
  }

  Widget get dropDownWidget => Container(
        width: width ?? double.maxFinite,
        decoration: boxDecoration,
        child: DropdownButtonFormField<SelectionPopupModel>(
          focusNode: focusNode,
          icon: icon,
          autofocus: autofocus,
          style: textStyle ?? CustomTextStyles.bodyMediumBlueGray300,
          hint: Text(
            hintText ?? "",
            style: hintStyle ?? CustomTextStyles.bodyMediumBlueGray300,
          ),
          items: items?.map((SelectionPopupModel item) {
            return DropdownMenuItem<SelectionPopupModel>(
              value: item,
              child: Text(
                item.title,
                overflow: TextOverflow.ellipsis,
                style: textStyle ?? CustomTextStyles.bodyMediumBlueGray300,
              ),
            );
          }).toList(),
          decoration: inputDecoration,
          validator: validator,
          onChanged: onChanged,
        ),
      );

  InputDecoration get inputDecoration => InputDecoration(
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.all(16.h),
        fillColor: fillColor ?? appTheme.gray5002,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.h),
              borderSide: BorderSide(
                color: appTheme.gray90002.withOpacity(0.1),
                width: 1,
              ),
            ),
        focusedBorder: (borderDecoration ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.h),
                ))
            .copyWith(
          borderSide: BorderSide(
            color: theme.colorScheme.primary,
            width: 1,
          ),
        ),
      );
}
