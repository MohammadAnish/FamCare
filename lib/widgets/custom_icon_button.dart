import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get gradientCyanToPrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(22.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(0, 17),
          ),
        ],
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [appTheme.cyan400, theme.colorScheme.primary],
        ),
      );

  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange100,
        borderRadius: BorderRadius.circular(12.h),
      );

  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(12.h),
      );

  static BoxDecoration get fillGrayTL12 => BoxDecoration(
        color: appTheme.gray800,
        borderRadius: BorderRadius.circular(12.h),
      );

  static BoxDecoration get fillGrayTL121 => BoxDecoration(
        color: appTheme.gray90003,
        borderRadius: BorderRadius.circular(12.h),
      );
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.decoration,
    this.padding,
    this.onTap,
    this.child,
  }) : super(key: key);

  final Alignment? alignment;
  final double? height;
  final double? width;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: DecoratedBox(
          decoration: decoration ??
              BoxDecoration(
                color: appTheme.blueA200.withOpacity(0.12),
                borderRadius: BorderRadius.circular(6.h),
              ),
          child: IconButton(
            padding: padding ?? EdgeInsets.zero,
            onPressed: onTap,
            icon: child ?? const SizedBox.shrink(),
          ),
        ),
      );
}
