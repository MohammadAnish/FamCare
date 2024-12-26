import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle get mulish => copyWith(fontFamily: 'Mulish');
  TextStyle get inter => copyWith(fontFamily: 'Inter');
  TextStyle get sFProDisplay => copyWith(fontFamily: 'SF Pro Display');
  TextStyle get notoSerifTelugu => copyWith(fontFamily: 'Noto Serif Telugu');
  TextStyle get poppins => copyWith(fontFamily: 'Poppins');
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
class CustomTextStyles {

  // Body text styles
  static TextStyle get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );

  static TextStyle get bodyLargePoppinsBlueGray300 => theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.blueGray300,
      );

  static TextStyle get bodyLargePoppinsGray90002 => theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get bodyLargePoppinsGray90002_1 => theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray90002.withOpacity(0.6),
      );

  static TextStyle get bodyMediumBlueGray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );

  static TextStyle get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );

  static TextStyle get bodyMediumGray90002_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );

  static TextStyle get bodyMediumGray90002_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002.withOpacity(0.6),
      );

  static TextStyle get bodyMediumGray90002_3 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );

  static TextStyle get bodyMediumSFProDisplayGray90002 => theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.gray90002,
      );

  static TextStyle get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );

  static TextStyle get bodySmallBlueA20001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA20001.withOpacity(0.39),
      );

  static TextStyle get bodySmallBlueA20001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA20001.withOpacity(0.28),
      );

  static TextStyle get bodySmallCyan400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.cyan400,
      );

  static TextStyle get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
      );

  static TextStyle get bodySmallGray90002_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002.withOpacity(0.6),
      );

  static TextStyle get bodySmallPoppins => theme.textTheme.bodySmall!.poppins.copyWith(
        fontSize: 10.fSize,
      );

  static TextStyle get bodySmallPoppinsGray90002 => theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray90002.withOpacity(0.4),
      );

  static TextStyle get bodySmallPoppinsGray9000210 => theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray90002.withOpacity(0.6),
        fontSize: 10.fSize,
      );

  static TextStyle get bodySmallPoppinsGray90002_1 => theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray90002.withOpacity(0.6),
      );

  static TextStyle get bodyMediumPoppinsBlack900 => theme.textTheme.bodyMedium!.poppins.copyWith(
    color: appTheme.black900,
  );          ////change_done

  // Headline text styles
  static TextStyle get headlineLargeBlueGray10001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray10001,
      );

  static TextStyle get headlineLargePoppinsGray90002 => theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.gray90002,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get headlineSmallTeal40005 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.teal40005,
        fontWeight: FontWeight.w500,
      );

  // Label text styles
  static TextStyle get labelLargeBlueA20001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA20001,
        fontSize: 13.fSize,
      );

  static TextStyle get labelLargeBlueA20001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA20001,
      );

  static TextStyle get labelLargeCyan400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.cyan400,
      );

  static TextStyle get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
      );

  static TextStyle get labelLargeGray90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002.withOpacity(0.5),
        fontSize: 13.fSize,
      );

  static TextStyle get labelLargeGray90002SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelLargeGray90002_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002.withOpacity(0.6),
      );

  static TextStyle get labelLargeInterBlueA20001 => theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueA20001,
      );

  static TextStyle get labelLargeInterOnErrorContainer => theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelLargeMulishBlack900 => theme.textTheme.labelLarge!.mulish.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelLargeMulishGray600 => theme.textTheme.labelLarge!.mulish.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get labelLargeMulishOnErrorContainer => theme.textTheme.labelLarge!.mulish.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );

  static TextStyle get labelMediumGray700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray700,
      );

  static TextStyle get labelMediumGray90002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray90002.withOpacity(0.4),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );

  // Title text styles
  static TextStyle get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );

  static TextStyle get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );

  static TextStyle get titleMediumBlueA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA200,
      );

  static TextStyle get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumGray90004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90004,
      );

  static TextStyle get titleMediumInter => theme.textTheme.titleMedium!.inter;

  static TextStyle get titleMediumInterBlueA200 => theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueA200,
      );

  static TextStyle get titleMediumInterOnErrorContainer => theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );

  static TextStyle get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumMulishBlack900 => theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.black900,
      );

  static TextStyle get titleMediumMulishGray600 => theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumMulishOnErrorContainer => theme.textTheme.titleMedium!.mulish.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );

  static TextStyle get titleMediumOnErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 18.fSize,
      );

  static TextStyle get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );

  static TextStyle get titleSmallBlueA20001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA20001,
      );

  static TextStyle get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
}
