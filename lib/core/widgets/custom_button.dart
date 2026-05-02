import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_size_class.dart';
import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final Color? color;
  final Color? textColor;
  final IconData? icon;
  final bool? isClip;
  final bool? fontFamily;
  final double? buttonSize;
  final Widget? image;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.color,
    this.textColor,
    this.icon,
    this.isClip,
    this.fontFamily,
    this.buttonSize,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: buttonSize ?? getHeight(AppDimensions.button52),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(
          getRadius(AppDimensions.radius10),
        ),
        child: ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? context.appColors.primary,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                getRadius(AppDimensions.radius18),
              ),
            ),
          ),
          child: isLoading
              ? SizedBox(
                  height: getRadius(AppDimensions.icon16),
                  width: getRadius(AppDimensions.icon16),
                  child: CircularProgressIndicator(
                    color: textColor ?? Colors.white,
                    strokeWidth: 2,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (image != null) ...[
                      image!,
                      SizedBox(width: getWidth(AppDimensions.space12)),
                    ],
                    if (icon != null) ...[
                      Icon(
                        icon,
                        color: textColor ?? Colors.white,
                        size: getRadius(AppDimensions.icon16),
                      ),
                      SizedBox(width: getWidth(AppDimensions.icon24)),
                    ],
                    Text(
                      text,
                      style: fontFamily == null
                          ? GoogleFonts.poppins(
                              fontSize: getSp(AppDimensions.font16),
                              fontWeight: FontWeight.w400,

                              color: textColor ?? Colors.white,
                            )
                          : GoogleFonts.plusJakartaSans(
                              fontSize: getSp(AppDimensions.font16),
                              fontWeight: FontWeight.w600,
                              color: textColor ?? AppColors.backgroundDark,
                            ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
