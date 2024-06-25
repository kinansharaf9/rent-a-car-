import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppStyle {
  //SECTION - App colors
  static Color primary = const Color(0xFF0077B6);
  //!SECTION

  //SECTION - App colors
  static Color backgroundColor = const Color(0xFFCAF0F8);
  //!SECTION

  //SECTION - App colors
  static Color primaryText = const Color(0xFF00001C);
  //!SECTION

  //SECTION - App colors
  static Color secondryText = const Color(0xFF999999);
  //!SECTION

  //SECTION - messages colors
  static Color errorColor = const Color(0xFFFF2424);
  //!SECTION

  //SECTION - background colors
  static Color scaffoldBackgroundColor = const Color(0xFFFDFDFD);
  //!SECTION

  //SECTION - Ads colors
  static Color adsColor = const Color(0xFFD9D9D9);
  //!SECTION

  //SECTION - statusBar colors
  static Color lightStatusBar = const Color(0xFFF5F5F5);
  //!SECTION

  //SECTION - statusBar colors
  static Color darkStatusBar = const Color(0xFF0F0F0F);
  //!SECTION

  static SystemUiOverlayStyle lightStatusBarStyle = SystemUiOverlayStyle(
    statusBarColor: lightStatusBar,
    statusBarIconBrightness: Brightness.dark,
  );

  static SystemUiOverlayStyle darkStatusBarStyle = SystemUiOverlayStyle(
    statusBarColor: darkStatusBar,
    statusBarIconBrightness: Brightness.light,
  );

  static ThemeData lightTheme(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return ThemeData(
      brightness: Brightness.light,
      primaryColor: primary,
      useMaterial3: true,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      cardColor: adsColor,
      canvasColor: Color(0xFFFFFFFF),
      dividerColor: Color(0xFF999999),
      colorScheme: ColorScheme.light(
        primary: primary,
        background: backgroundColor,
        error: errorColor,
      ).copyWith(background: backgroundColor),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: primaryText,
          fontFamily: 'OriginalSurfer',
          fontSize: 26,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: secondryText,
          fontFamily: 'OriginalSurfer',
          fontSize: screenWidth * 0.035,
        ),
        bodySmall: TextStyle(
          color: primaryText,
          fontFamily: 'OriginalSurfer',
          fontSize: 14,
          height: 1,
        ),
        labelMedium: TextStyle(
          color: primaryText,
          fontFamily: 'OriginalSurfer',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        labelSmall: TextStyle(
          color: secondryText,
          fontFamily: 'OriginalSurfer',
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: Color(0xFFFFFFFF),
          fontFamily: 'OriginalSurfer',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1,
        ),
        displayMedium: TextStyle(
          color: Color(0xFFFFFFFFB2),
          fontFamily: 'OriginalSurfer',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis,
          height: 1,
        ),
        displaySmall: TextStyle(
          color: errorColor,
          fontFamily: 'OriginalSurfer',
          fontSize: 14,
          height: 1,
        ),
        titleMedium: TextStyle(
          color: primaryText,
          fontFamily: 'OriginalSurfer',
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: Color(0xFF404040),
          fontFamily: 'OriginalSurfer',
          fontSize: 14,
          height: 1,
        ),
        labelLarge: TextStyle(
          color: primary,
          fontFamily: 'OriginalSurfer',
          fontSize: 14,
          height: 1,
        ),
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: primary,
      useMaterial3: true,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      cardColor: adsColor,
      canvasColor: Color(0xFFFFFFFF),
      dividerColor: Color(0xFF999999),
      colorScheme: ColorScheme.dark(
        primary: primary,
        background: backgroundColor,
        error: errorColor,
      ).copyWith(background: backgroundColor),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: primaryText,
          fontFamily: 'OriginalSurfer',
          fontSize: 26,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: secondryText,
          fontFamily: 'OriginalSurfer',
          fontSize: screenWidth * 0.035,
        ),
        bodySmall: TextStyle(
          color: primaryText,
          fontFamily: 'OriginalSurfer',
          fontSize: 14,
          height: 1,
        ),
        labelMedium: TextStyle(
          color: primaryText,
          fontFamily: 'OriginalSurfer',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        labelSmall: TextStyle(
          color: secondryText,
          fontFamily: 'OriginalSurfer',
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: Color(0xFFFFFFFF),
          fontFamily: 'OriginalSurfer',
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: Color(0xFFFFFFFFB2),
          fontFamily: 'OriginalSurfer',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis,
        ),
        displaySmall: TextStyle(
          color: errorColor,
          fontFamily: 'OriginalSurfer',
          fontSize: 14,
          height: 1,
        ),
        titleMedium: TextStyle(
          color: primaryText,
          fontFamily: 'OriginalSurfer',
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: Color(0xFF404040),
          fontFamily: 'OriginalSurfer',
          fontSize: 14,
          height: 1,
        ),
        labelLarge: TextStyle(
          color: primary,
          fontFamily: 'OriginalSurfer',
          fontSize: 14,
          height: 1,
        ),
      ),
    );
  }
}
