import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_size_class.dart';
import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? clip;
  final String? prefixedText;
  final bool? readOnly;
  final bool? showCursor;
  final TextInputType? textInputType;
  final ValueChanged<String>? onChanged;

  final Color? hintColor;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.clip,
    this.prefixedText,
    this.readOnly,
    this.showCursor,
    this.textInputType,
    this.hintColor,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return TextFormField(
      onChanged: onChanged,
      showCursor: showCursor == true,
      readOnly: readOnly == true,
      keyboardType: textInputType,
      controller: controller,
      obscureText: isPassword,
      validator: validator,
      style: GoogleFonts.poppins(
        fontSize: getSp(AppDimensions.font14),
        fontWeight: FontWeight.w500,
        color: AppColors.backgroundDark,
      ),
      decoration: InputDecoration(
        prefixText: prefixedText,
        contentPadding: EdgeInsetsGeometry.only(
          top: getWidth(10),
          bottom: getWidth(10),
          left: getWidth(10),
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: getWidth(18.0), left: getWidth(18.0)),
          child: suffixIcon,
        ),
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: EdgeInsets.only(
                  left: getWidth(18.0),
                  right: getWidth(7.0),
                ),
                child: prefixIcon,
              )
            : null,
        suffixIconConstraints: BoxConstraints(minHeight: 30, minWidth: 30),
        prefixIconConstraints: BoxConstraints(minHeight: 10, minWidth: 10),
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          fontSize: getSp(AppDimensions.font14),
          fontWeight: FontWeight.w400,
          color: hintColor ?? AppColors.backgroundDark.withValues(alpha: 0.4),
        ),
        filled: true,
        fillColor: AppColors.elevatedSurfaceLight,
        // focusedBorder: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            getRadius(AppDimensions.radius16),
          ),
          borderSide: BorderSide(
            color: AppColors.backgroundDark.withValues(alpha: 0.4),
            width: 1.0,
          ),
        ),
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            getRadius(AppDimensions.radius16),
          ),
          borderSide: BorderSide(
            color: AppColors.backgroundDark.withValues(alpha: 0.4),
            width: 1.0,
          ),
        ),
        focusedErrorBorder: InputBorder.none,
      ),
    );
  }
}
