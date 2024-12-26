import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillOnErrorContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer,
        elevation: 0,
      );

  // Gradient button styles
  static BoxDecoration get gradientCyanToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(28.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.cyan400, theme.colorScheme.primary],
        ),
      );

  static BoxDecoration get gradientCyanToPrimaryTL24Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.cyan400, theme.colorScheme.primary],
        ),
      );

  static BoxDecoration get gradientCyanToPrimaryTL25Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(25.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.cyan400, theme.colorScheme.primary],
        ),
      );

  static BoxDecoration get gradientCyanToPrimaryTL28Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(28.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.cyan400, theme.colorScheme.primary],
        ),
      );

  static BoxDecoration get gradientCyanToPrimaryTL281Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(28.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.cyan400, theme.colorScheme.primary],
        ),
      );

  // Outline button style
  static ButtonStyle get outline => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
      );

  // Text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
        elevation: WidgetStateProperty.all<double>(0),
        side: WidgetStateProperty.all<BorderSide>(
          BorderSide(color: Colors.transparent),
        ),
      );
}
