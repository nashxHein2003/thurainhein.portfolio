import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_color.dart';

ThemeData get appTheme {
  return ThemeData(
    scaffoldBackgroundColor: AppColor.kBGColor,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 96,
        fontFamily: "Sansation",
        fontWeight: FontWeight.w700,
        color: AppColor.kWhite,
      ),
      labelMedium: TextStyle(
        fontSize: 20,
        fontFamily: "Sansation",
        fontWeight: FontWeight.w700,
        color: AppColor.kPrimaryColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        fontFamily: "Sansation",
        fontWeight: FontWeight.w700,
        color: AppColor.kWhite,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontFamily: "Sansation",
        fontWeight: FontWeight.w400,
        color: AppColor.kWhite,
      ),
      bodySmall: TextStyle(
        fontSize: 11,
        fontFamily: "Sansation",
        fontWeight: FontWeight.w400,
        color: AppColor.kWhite,
      ),
    ),
  );
}
