import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:portfolio/core/theme/app_color.dart';

class ResponsiveTextStyle {
  static TextStyle titleLarge(BuildContext context) {
    double fontSize = ResponsiveBreakpoints.of(context).isMobile ? 48 : 96;
    return TextStyle(
      fontSize: fontSize,
      fontFamily: "Sansation",
      fontWeight: FontWeight.w700,
      color: AppColor.kWhite,
    );
  }

  static TextStyle labelMedium(BuildContext context) {
    double fontSize = ResponsiveBreakpoints.of(context).isMobile ? 16 : 20;
    return TextStyle(
      fontSize: fontSize,
      fontFamily: "Sansation",
      fontWeight: FontWeight.w700,
      color: AppColor.kPrimaryColor,
    );
  }

  static TextStyle bodyLarge(BuildContext context) {
    double fontSize = ResponsiveBreakpoints.of(context).isMobile ? 16 : 20;
    return TextStyle(
      fontSize: fontSize,
      fontFamily: "Sansation",
      fontWeight: FontWeight.w700,
      color: AppColor.kWhite,
    );
  }

  static TextStyle bodyMedium(BuildContext context) {
    double fontSize = ResponsiveBreakpoints.of(context).isMobile ? 12 : 14;
    return TextStyle(
      fontSize: fontSize,
      fontFamily: "Sansation",
      fontWeight: FontWeight.w400,
      color: AppColor.kWhite,
    );
  }

  static TextStyle bodySmall(BuildContext context) {
    double fontSize = ResponsiveBreakpoints.of(context).isMobile ? 10 : 11;
    return TextStyle(
      fontSize: fontSize,
      fontFamily: "Sansation",
      fontWeight: FontWeight.w400,
      color: AppColor.kWhite,
    );
  }
}
