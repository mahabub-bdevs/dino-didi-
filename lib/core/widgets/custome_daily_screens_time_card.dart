import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';
import '../utils/app_images.dart';
import '../utils/app_size_class.dart';
import '../utils/app_strings.dart';
import 'custom_svg_icon.dart';
import 'custom_text.dart';

class CustomeDailyScreensTimeCard extends StatelessWidget {
  const CustomeDailyScreensTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF0F8FF).withValues(alpha: 0.8),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsetsGeometry.only(
              top: getHeight(AppDimensions.padding16),
              left: getWidth(AppDimensions.padding16),
            ),
            height: 155,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: getHeight(AppDimensions.containerHeight30),
                      width: getWidth(AppDimensions.containerWeight30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.elevatedSurfaceLight,
                      ),
                      child: Center(
                        child: CustomSvgIcon(assetName: ImagePath.moon),
                      ),
                    ),
                    SizedBox(height: getHeight(AppDimensions.space10)),
                    CustomText(
                      text: "08:00 PM",
                      fontWeight: FontWeight.bold,
                      fontSize: getSp(AppDimensions.font16),
                      color: AppColors.backgroundDark,
                      fontFamily: AppFont.quicksand,
                      letterSpacing: -0.3,
                    ),
                    SizedBox(height: getHeight(AppDimensions.space4)),
                    CustomText(
                      text: AppStrings.scheduled,
                      fontSize: getSp(AppDimensions.font11),
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFont.popinice,
                      color: AppColors.backgroundDark.withValues(alpha: 0.4),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: getWidth(AppDimensions.space7)),
          SizedBox(
            height: getHeight(150),
            child: VerticalDivider(color: AppColors.elevatedSurfaceLight),
          ),

          Container(
            padding: EdgeInsetsGeometry.all(getRadius(AppDimensions.padding16)),
            height: 155,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: getHeight(AppDimensions.containerHeight30),
                      width: getWidth(AppDimensions.containerWeight30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.elevatedSurfaceLight,
                      ),
                      child: Center(
                        child: CustomSvgIcon(assetName: ImagePath.timer),
                      ),
                    ),
                    SizedBox(height: getHeight(AppDimensions.space10)),
                    CustomText(
                      text: "1h 30 m",
                      fontWeight: FontWeight.bold,
                      fontSize: getSp(AppDimensions.font16),
                      color: AppColors.backgroundDark,
                      fontFamily: AppFont.quicksand,
                      letterSpacing: -0.3,
                    ),
                    SizedBox(height: getHeight(AppDimensions.space4)),
                    CustomText(
                      text: AppStrings.screensTime.tr,
                      fontSize: getSp(AppDimensions.font11),
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFont.popinice,
                      color: AppColors.backgroundDark.withValues(alpha: 0.4),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            height: getHeight(150),
            child: VerticalDivider(color: AppColors.elevatedSurfaceLight),
          ),

          Container(
            padding: EdgeInsetsGeometry.all(getRadius(AppDimensions.padding16)),
            height: 155,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: getHeight(AppDimensions.containerHeight30),
                      width: getWidth(AppDimensions.containerWeight30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.elevatedSurfaceLight,
                      ),
                      child: Center(
                        child: CustomSvgIcon(assetName: ImagePath.lampCharge),
                      ),
                    ),
                    SizedBox(height: getHeight(AppDimensions.space10)),
                    CustomText(
                      text: "2h 45 m",
                      fontWeight: FontWeight.bold,
                      fontSize: getSp(AppDimensions.font16),
                      color: AppColors.backgroundDark,
                      fontFamily: AppFont.quicksand,
                      letterSpacing: -0.3,
                    ),
                    SizedBox(height: getHeight(AppDimensions.space4)),
                    CustomText(
                      text: AppStrings.totalLearned.tr,
                      fontSize: getSp(AppDimensions.font11),
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFont.popinice,
                      color: AppColors.backgroundDark.withValues(alpha: 0.4),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
