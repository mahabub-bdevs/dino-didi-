import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_colors.dart';

enum AppFont {
  dmSans,
  satosi,
  meansLight,
  meansRegular,
  popinice,
  sfPro,
  sfProRegular,
  quicksand,
}

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final AppFont fontFamily;
  final double? lineHeight;
  final double? maxWidth;
  final double? letterSpacing;
  final TextDecoration? decoration;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.maxLines = 2,
    this.overflow,
    this.fontFamily = AppFont.dmSans,
    this.lineHeight,
    this.maxWidth,
    this.decoration = TextDecoration.none,
    this.letterSpacing,
  });

  TextStyle _getTextStyle(BuildContext context) {
    final Color defaultColor = color ?? AppColors.primaryDark;
    final double defaultFontSize = fontSize ?? 14;
    final FontWeight defaultFontWeight = fontWeight ?? FontWeight.normal;

    switch (fontFamily) {
      case AppFont.dmSans:
        return GoogleFonts.dmSans(
          fontSize: defaultFontSize,
          fontWeight: defaultFontWeight,
          color: defaultColor,
          height: lineHeight,
          decoration: decoration,
          decorationColor: defaultColor,
          decorationThickness: 1.0,
        );
      case AppFont.satosi:
        return TextStyle(
          fontFamily: 'satoshi',
          fontSize: defaultFontSize,
          fontWeight: defaultFontWeight,
          color: defaultColor,
          height: lineHeight,
          decoration: decoration,
          decorationColor: defaultColor,
          decorationThickness: 1.0,
        );
      case AppFont.meansLight:
        return TextStyle(
          fontFamily: 'means_light',
          fontSize: defaultFontSize,
          fontWeight: defaultFontWeight,
          color: defaultColor,
          height: lineHeight,
          decoration: decoration,
          decorationColor: defaultColor,
          decorationThickness: 1.0,
        );
      case AppFont.meansRegular:
        return TextStyle(
          fontFamily: 'means_regular',
          fontSize: defaultFontSize,
          fontWeight: defaultFontWeight,
          color: defaultColor,
          height: lineHeight,
          decoration: decoration,
        );
      case AppFont.popinice:
        return GoogleFonts.poppins(
          fontSize: defaultFontSize,
          fontWeight: defaultFontWeight,
          color: defaultColor,
          height: lineHeight,
          decoration: decoration,
          letterSpacing: letterSpacing,
        );
      case AppFont.sfPro:
        return TextStyle(
          fontFamily: "sf_pro",
          fontSize: defaultFontSize,
          fontWeight: defaultFontWeight,
          color: defaultColor,
          height: lineHeight,
          decoration: decoration,
          letterSpacing: letterSpacing,
        );
      case AppFont.sfProRegular:
        return TextStyle(
          fontFamily: "sf_proRegular",
          fontSize: defaultFontSize,
          fontWeight: defaultFontWeight,
          color: defaultColor,
          height: lineHeight,
          decoration: decoration,
          letterSpacing: letterSpacing,
        );
      case AppFont.quicksand:
        return GoogleFonts.quicksand(
          fontSize: defaultFontSize,
          fontWeight: defaultFontWeight,
          color: defaultColor,
          height: lineHeight,
          decoration: decoration,
          letterSpacing: letterSpacing,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: true,
      style: _getTextStyle(context),
    );
  }
}
