import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );

  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan50,
      );

  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange100,
      );

  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );

  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );

  static BoxDecoration get fillGray800 => BoxDecoration(
        color: appTheme.gray800,
      );

  static BoxDecoration get fillGray90003 => BoxDecoration(
        color: appTheme.gray90003,
      );

  static BoxDecoration get fillGrayB => BoxDecoration(
        color: appTheme.gray5006b,
      );

  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );

  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange100,
      );

  static BoxDecoration get fillOrange50 => BoxDecoration(
        color: appTheme.orange50,
      );

  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );

  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple100,
      );

  static BoxDecoration get fillPurple90001 => BoxDecoration(
        color: appTheme.purple90001,
      );

  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal900,
      );

  // Gradient decorations
  static BoxDecoration get gradientCyan400ToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.cyan400,
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );

  static BoxDecoration get gradientCyan400ToPrimary1 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.cyan400,
            appTheme.teal40006,
            theme.colorScheme.primary,
          ],
        ),
      );

  static BoxDecoration get gradientCyanToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.cyan400,
            appTheme.teal400,
            theme.colorScheme.primary,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueA => BoxDecoration(
        border: Border.all(
          color: appTheme.blueA20001.withOpacity(0.7),
          width: 1.h,
        ),
      );

  static BoxDecoration get outlineBlueA20001 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.blueA20001.withOpacity(0.39),
          width: 1.h,
        ),
      );

  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray5002,
        border: Border.all(
          color: appTheme.gray90002.withOpacity(0.1),
          width: 1.h,
        ),
      );

  static BoxDecoration get outlineGray30002 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray30002,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 1),
          ),
        ],
      );

  static BoxDecoration get outlineGray90001 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.gray90001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 1),
          ),
        ],
      );

  static BoxDecoration get outlineGray90002 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray90002.withOpacity(0.1),
          width: 1.h,
        ),
      );

  static BoxDecoration get outlineGray900021 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray90002.withOpacity(0.1),
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder24 => BorderRadius.circular(24.h);

  // Custom borders
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(10.h);

  static BorderRadius get roundedBorder15 => BorderRadius.circular(15.h);

  static BorderRadius get roundedBorder3 => BorderRadius.circular(3.h);

  static BorderRadius get roundedBorder44 => BorderRadius.circular(44.h);

  static BorderRadius get roundedBorder50 => BorderRadius.circular(50.h);

  static BorderRadius get roundedBorder6 => BorderRadius.circular(6.h);

  static BorderRadius get roundedBorder92 => BorderRadius.circular(92.h);
}
