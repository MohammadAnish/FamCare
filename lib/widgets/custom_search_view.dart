import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension SearchViewStyleHelper on CustomSearchView {
  static OutlineInputBorder get fillOnErrorContainer => OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.h),
        borderSide: BorderSide.none,
      );
}

class CustomSearchView extends StatelessWidget {
  CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
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
  final EdgeInsets? scrollPadding; // Fixed the type here
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;
  final TextStyle? textStyle;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool filled;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null // Corrected the condition
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget(context),
          )
        : searchViewWidget(context);
  }

  Widget searchViewWidget(BuildContext context) => Container(
        width: width ?? double.infinity, // Replaced `double.maxFinite` with `double.infinity`
        decoration: boxDecoration,
        child: TextFormField(
          scrollPadding: scrollPadding ??
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          controller: controller,
          focusNode: focusNode,
          onTapOutside: (event) {
            focusNode?.unfocus(); // Simplified null check
          },
          autofocus: autofocus,
          style: textStyle ?? CustomTextStyles.bodySmallPoppinsGray90002,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          onChanged: (String value) {
            onChanged?.call(value);
          },
        ),
      );

  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.bodySmallPoppinsGray90002_1,
        prefixIcon: prefix ??
            Container(
              margin: EdgeInsets.fromLTRB(24.h, 10.h, 12.h, 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 16.h,
                width: 18.h,
              ),
            ),
        prefixIconConstraints: prefixConstraints ??
            BoxConstraints(
              maxHeight: 40.h,
            ),
        suffixIcon: suffix ??
            Padding(
              padding: EdgeInsets.only(right: 15.h),
              child: IconButton(
                onPressed: () => controller?.clear(),
                icon: Icon(
                  Icons.clear,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
        suffixIconConstraints: suffixConstraints ??
            BoxConstraints(
              maxHeight: 40.h,
            ),
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.all(10.h),
        fillColor: fillColor ?? appTheme.gray5001,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.h),
              borderSide: BorderSide(
                color: appTheme.blueGray50,
                width: 1,
              ),
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.h),
              borderSide: BorderSide(
                color: appTheme.blueGray50,
                width: 1,
              ),
            ),
        focusedBorder: (borderDecoration ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.h),
                ))
            .copyWith(
          borderSide: BorderSide(
            color: theme.colorScheme.primary,
            width: 1,
          ),
        ),
      );
}
