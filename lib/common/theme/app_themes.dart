import 'package:flutter/material.dart';
import 'package:movies_app/common/theme/app_color.dart';
import 'package:movies_app/common/theme/text_style.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    highlightColor: AppColor.blackcolor,
    hoverColor: AppColor.btncolor,
    primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: AppColor.blackcolor,
      elevation: 0,
      titleTextStyle: AppTextStyle.style20w500.copyWith(
        color: AppColor.blackcolor,
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColor.botomNB,
      selectedLabelStyle: AppTextStyle.style12w400.copyWith(
        color: AppColor.btncolor,
      ),
      selectedItemColor: AppColor.btncolor,
      unselectedLabelStyle: AppTextStyle.style12w400.copyWith(
        color: Colors.white,
      ),
      unselectedItemColor: Colors.white,
    ),

    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    textTheme: _genrateTextTheme(AppColor.blackcolor),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColor.blackcolor,
    hoverColor: AppColor.btncolor,
    highlightColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.blackcolor,
      foregroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: AppTextStyle.style20w500.copyWith(color: Colors.white),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColor.botomNB,
      selectedLabelStyle: AppTextStyle.style12w400.copyWith(
        color: AppColor.btncolor,
      ),
      selectedItemColor: AppColor.btncolor,
      unselectedLabelStyle: AppTextStyle.style12w400.copyWith(
        color: Colors.white,
      ),
      unselectedItemColor: Colors.white,
    ),
    scaffoldBackgroundColor: AppColor.blackcolor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.blackcolor),
    textTheme: _genrateTextTheme(Colors.white),
  );
  static TextTheme _genrateTextTheme(Color color) {
    return TextTheme(
      displayLarge: AppTextStyle.style24w600.copyWith(color: color),
      displayMedium: AppTextStyle.style20w600.copyWith(color: color),
      displaySmall: AppTextStyle.style20w500.copyWith(color: color),
      headlineLarge: AppTextStyle.style18w600.copyWith(color: color),
      headlineMedium: AppTextStyle.style18w500.copyWith(color: color),
      headlineSmall: AppTextStyle.style18w400.copyWith(color: color),

      titleLarge: AppTextStyle.style16w600.copyWith(color: color),
      titleMedium: AppTextStyle.style16w500.copyWith(color: color),
      titleSmall: AppTextStyle.style16w400.copyWith(color: color),

      labelLarge: AppTextStyle.style14w600.copyWith(color: color),
      labelMedium: AppTextStyle.style14w500.copyWith(color: color),
      labelSmall: AppTextStyle.style14w400.copyWith(color: color),

      bodyLarge: AppTextStyle.style12w600.copyWith(color: color),
      bodyMedium: AppTextStyle.style12w500.copyWith(color: color),
      bodySmall: AppTextStyle.style12w400.copyWith(color: color),
    );
  }
}
