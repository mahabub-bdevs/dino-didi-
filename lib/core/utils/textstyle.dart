import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core.dart';

class Textstyles {
  TextStyle textbold({Color? color, double? fontsize}) {
    return TextStyle(
      fontSize: fontsize ?? AppDimensions.font15,
      fontWeight: FontWeight.bold,
      color: color ?? AppColors.primaryDark,
      fontFamily: "Means",
    );
  }

  TextStyle text400({Color? color, double? fontsize}) {
    return TextStyle(
      fontSize: fontsize ?? AppDimensions.font14,
      fontWeight: FontWeight.w400,
      color: color ?? AppColors.primaryDark,
      fontFamily: "Means",
    );
  }

  TextStyle textsmall({Color? color, double? fontsize}) {
    return TextStyle(
      fontSize: fontsize ?? AppDimensions.font16,
      color: color ?? AppColors.primaryDark,
    );
  }

  //Business text Styles

  TextStyle smalltext({double? fontsize}) {
    return TextStyle(
      fontSize: fontsize ?? 16,
      fontFamily: "Means",
      color: AppColors.backgroundDark,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle medialtext() {
    return TextStyle(
      fontFamily: "Means",
      fontSize: 18,
      color: AppColors.backgroundDark,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle leargertext() {
    return TextStyle(
      fontFamily: "Means",
      fontSize: 24,
      color: AppColors.backgroundDark,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle textS({double? fontsize}) {
    return GoogleFonts.dmSans(
      fontSize: fontsize ?? 12,
      fontWeight: FontWeight.w400,
      color: AppColors.backgroundDark.withAlpha(150),
    );
  }

  TextStyle textL({
    double? fontsize,
    Color? fontColor,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
  }) {
    return GoogleFonts.dmSans(
      decoration: textDecoration ?? TextDecoration.none,
      fontSize: fontsize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: fontColor ?? Color(0xFF00171D).withAlpha(190),
    );
  }

  TextStyle texthint({double? fontsize}) {
    return GoogleFonts.dmSans(
      fontSize: fontsize ?? 14,
      fontWeight: FontWeight.w400,
      color: Color(0xFF00171D).withAlpha(150),
    );
  }

  TextStyle textStyle(
    Color? textColor,
    double fontSize, {
    FontWeight? fonts,
    String? fontFamily,
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? "satoshi_medium",
      color: textColor ?? AppColors.backgroundDark,
      fontSize: fontSize,
      fontWeight: fonts ?? FontWeight.w500,
    );
  }
}
