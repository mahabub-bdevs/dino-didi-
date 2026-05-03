import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';
import '../utils/app_images.dart';
import '../utils/app_size_class.dart';
import '../utils/app_strings.dart';
import 'custom_text.dart';

class CustomUpdateToPremiumCard extends StatelessWidget {
  const CustomUpdateToPremiumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.only(
        // bottom: getHeight(AppDimensions.padding24),
        //left: getWidth(AppDimensions.padding16),
        right: getWidth(AppDimensions.padding18),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getRadius(AppDimensions.radius20)),
        color: AppColors.elevatedSurfaceLight,
        image: DecorationImage(
          image: AssetImage(ImagePath.upgradePremium),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(AppDimensions.padding16),
              top: getHeight(AppDimensions.padding24),
              bottom: getHeight(AppDimensions.padding24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: AppStrings.upgradePremium.tr,
                  fontSize: getSp(AppDimensions.font20),
                  fontWeight: FontWeight.bold,
                  color: AppColors.backgroundDark,
                  fontFamily: AppFont.quicksand,
                ),
                SizedBox(height: getHeight(AppDimensions.space8)),
                CustomText(
                  text: AppStrings.toUnlockMoreLearning.tr,
                  fontSize: getSp(AppDimensions.font12),
                  fontWeight: FontWeight.w300,
                  color: AppColors.backgroundDark,
                  fontFamily: AppFont.popinice,
                ),
                SizedBox(height: getHeight(AppDimensions.space16)),
                Image.asset(
                  ImagePath.upgradeButtonImage,
                  height: getHeight(AppDimensions.imageHeight50),
                  width: getWidth(AppDimensions.imageWeight135),
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
          ),
          SizedBox(width: getWidth(AppDimensions.space20)),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                ImagePath.dinoDiniJunior,
                height: 200,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
