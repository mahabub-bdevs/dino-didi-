import 'dart:ffi' hide Size;

import 'package:dino_dadi_app/core/widgets/progress_painter.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';
import '../utils/app_images.dart';
import '../utils/app_size_class.dart';
import '../utils/app_strings.dart';
import 'custom_text.dart';

class CustomLearningActivityCard extends StatelessWidget {
  final String? imagePath;
  final String? title;
  final String? year;
  final String? time;
  final Widget? circularProgress;
  final Color? activeColor;
  final double? currentMin;
  const CustomLearningActivityCard({
    super.key,
    this.imagePath,
    this.title,
    this.year,
    this.time,
    this.circularProgress,
    this.activeColor,
    this.currentMin,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: getHeight(AppDimensions.containerHeight80),
      width: getWidth(size.width),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getRadius(AppDimensions.radius16)),
        border: BoxBorder.all(
          width: 1.0,
          color: AppColors.backgroundDark.withValues(alpha: 0.1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getHeight(AppDimensions.containerHeight80),
            width: getWidth(AppDimensions.containerWeight85),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(getRadius(AppDimensions.radius16)),
                bottomLeft: Radius.circular(getRadius(AppDimensions.radius16)),
              ),
              color: Color(0xFFF0F8FF),
            ),
            child: Center(
              child: Image.asset(
                imagePath ?? ImagePath.dinoLittleImage,
                height: 55,
                width: 57,
              ),
            ),
          ),
          SizedBox(width: getWidth(AppDimensions.space16)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: title ?? AppStrings.dinoLittle.tr,
                fontSize: getSp(AppDimensions.font16),
                color: AppColors.backgroundDark,
                fontWeight: FontWeight.w900,
                fontFamily: AppFont.quicksand,
                letterSpacing: -0.4,
              ),
              SizedBox(height: getHeight(AppDimensions.space4)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  CustomText(
                    text: year ?? "Age 02",
                    fontSize: getSp(AppDimensions.font12),
                    fontWeight: FontWeight.w400,
                    color: AppColors.backgroundDark.withValues(alpha: 0.4),
                  ),
                  SizedBox(width: getWidth(AppDimensions.space4)),
                  Container(
                    height: getHeight(4),
                    width: getWidth(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.backgroundDark.withValues(alpha: 0.4),
                    ),
                  ),
                  SizedBox(width: getWidth(AppDimensions.space4)),
                  CustomText(
                    text: time ?? "45 min",
                    fontSize: getSp(AppDimensions.font12),
                    fontWeight: FontWeight.w400,
                    color: AppColors.backgroundDark.withValues(alpha: 0.4),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: getWidth(AppDimensions.padding18)),
            child:
                circularProgress ??
                MyCircularProgress(
                  activeColor:activeColor?? AppColors.pinkColor,
                  totalMin: 90,
                  currentMin:currentMin?? 45,
                ),
          ),
        ],
      ),
    );
  }
}
