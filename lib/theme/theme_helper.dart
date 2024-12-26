import 'package:flutter/material.dart';

import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();

ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
class ThemeHelper {

  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  final Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors(),
  };

  // A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme,
  };

  /// Returns the color theme for the current app theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the ThemeData for the current app theme.
  ThemeData _getThemeData() {
    var colorScheme = _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;

    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onErrorContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.blueA20001.withOpacity(0.17),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray200,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueA20001.withOpacity(0.13),
      ),
    );
  }

  /// Returns the LightCodeColors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the ThemeData for the current theme.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {

  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyLarge: TextStyle(
      color: colorScheme.onErrorContainer,
      fontSize: 16.fSize,
      fontFamily: 'Noto Serif Telugu',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: appTheme.gray90002.withOpacity(0.4),
      fontSize: 14.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: colorScheme.onErrorContainer,
      fontSize: 12.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
      color: appTheme.gray90002,
      fontSize: 56.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: TextStyle(
      color: appTheme.gray900,
      fontSize: 32.fSize,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      color: colorScheme.onErrorContainer,
      fontSize: 24.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    ),
    labelLarge: TextStyle(
      color: appTheme.gray90002.withOpacity(0.4),
      fontSize: 12.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      color: appTheme.blueA20001.withOpacity(0.74),
      fontSize: 10.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    ),
    labelSmall: TextStyle(
      color: appTheme.gray90002.withOpacity(0.4),
      fontSize: 8.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      color: appTheme.gray90002,
      fontSize: 20.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    ),
    titleMedium: TextStyle(
      color: appTheme.gray90002,
      fontSize: 16.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: appTheme.gray90002,
      fontSize: 14.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    ),
  );
}

/// Class containing the supported color schemes.
class ColorSchemes {

  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF1C7E79),
    primaryContainer: Color(0XFF590909),
    errorContainer: Color(0XFF3F3F3F),
    onError: Color(0XFFEA4335),
    onErrorContainer: Color(0XFFFFFFFF),
    onPrimary: Color(0XFF0C0C0C),
    onPrimaryContainer: Color(0XFF2BC1B9),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {

  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue600 => Color(0XFF3577E5);
  Color get blueA200 => Color(0XFF407BFF);
  Color get blueA20001 => Color(0XFF407CE2);

  // BlueGray
  Color get blueGray100 => Color(0XFFCCCCCC);
  Color get blueGray10001 => Color(0XFFD6D8D6);
  Color get blueGray10002 => Color(0XFFD9D9D9);
  Color get blueGray300 => Color(0XFFA0A7B0);
  Color get blueGray50 => Color(0XFFE8F3F1);
  Color get blueGray500 => Color(0XFF468E95);
  Color get blueGray900 => Color(0XFF263238);

  // Cyan
  Color get cyan400 => Color(0XFF33E4DB);
  Color get cyan40001 => Color(0XFF2DC9C2);
  Color get cyan40002 => Color(0XFF32DFD6);
  Color get cyan50 => Color(0XFFD0FAFF);
  Color get cyan800 => Color(0XFF1A7F95);

  // DeepOrange
  Color get deepOrange100 => Color(0XFFF8BDBD);
  Color get deepOrange400 => Color(0XFFE48343);
  Color get deepOrangeA100 => Color(0XFFFFB573);

  // Gray
  Color get gray100 => Color(0XFFFBF0F3);
  Color get gray10001 => Color(0XFFF5F5F5);
  Color get gray200 => Color(0XFFE5E7EB);
  Color get gray20001 => Color(0XFFEBEBEB);
  Color get gray20002 => Color(0XFFF0F0F0);
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray30001 => Color(0XFFE0E0E0);
  Color get gray30002 => Color(0XFFE7E6E6);
  Color get gray50 => Color(0XFFF4F7FF);
  Color get gray5001 => Color(0XFFFAFAFA);
  Color get gray5002 => Color(0XFFF9F9FB);
  Color get gray600 => Color(0XFF808080);
  Color get gray60001 => Color(0XFF9C4A6B);
  Color get gray700 => Color(0XFF565656);
  Color get gray800 => Color(0XFF593609);
  Color get gray900 => Color(0XFF272927);
  Color get gray90001 => Color(0XFF252323);
  Color get gray90002 => Color(0XFF221F1F);
  Color get gray90003 => Color(0XFF161616);
  Color get gray90004 => Color(0XFF101623);
  Color get gray900A8 => Color(0XA8242424);

  // Grayb
  Color get gray5006b => Color(0X6BB2748C);

  // LightGreen
  Color get lightGreen800 => Color(0XFF478E04);
  Color get lightGreen80001 => Color(0XFF53A604);

  // Orange
  Color get orange100 => Color(0XFFF8DEBD);
  Color get orange300 => Color(0XFFF4B056);
  Color get orange50 => Color(0XFFFBF0DC);
  Color get orangeA200 => Color(0XFFE9A64E);
  Color get orangeA20001 => Color(0XFFF3A53E);

  // Purple
  Color get purple100 => Color(0XFFF6C2FF);
  Color get purple900 => Color(0XFF4A0056);
  Color get purple90001 => Color(0XFF490056);
  Color get purpleA400 => Color(0XFFD900FF);
  Color get purpleA40001 => Color(0XFFDC19FF);

  // Red
  Color get red200 => Color(0XFFE497A1);
  Color get red20001 => Color(0XFFD2B47D);
  Color get red20002 => Color(0XFFDF8390);
  Color get red300 => Color(0XFFD07D80);
  Color get red30001 => Color(0XFFCA6B6E);
  Color get red400 => Color(0XFFE14949);
  Color get redA100 => Color(0XFFFF7F7F);
  Color get redA200 => Color(0XFFFF5652);
  Color get redA20001 => Color(0XFFFF6565);
  Color get redA700 => Color(0XFFFE0000);

  // Teal
  Color get teal300 => Color(0XFF4E9FA7);
  Color get teal400 => Color(0XFF27AFA8);
  Color get teal40001 => Color(0XFF28B3AB);
  Color get teal40002 => Color(0XFF27B1AA);
  Color get teal40003 => Color(0XFF25A8A2);
  Color get teal40004 => Color(0XFF26AAA3);
  Color get teal40005 => Color(0XFF20A8A1);
  Color get teal40006 => Color(0XFF29BBB4);
  Color get teal40007 => Color(0XFF28B6AE);
  Color get teal700 => Color(0XFF176D80);
  Color get teal900 => Color(0XFF004248);

  // Yellow
  Color get yellow800 => Color(0XFFE79B38);
}
