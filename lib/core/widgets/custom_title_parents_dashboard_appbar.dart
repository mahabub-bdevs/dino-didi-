import 'package:dino_dadi_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';
import '../utils/app_images.dart';
import '../utils/app_size_class.dart';
import 'custom_svg_icon.dart';
import 'custom_text.dart';

class CustomTitleParentsDashboardAppbar extends StatelessWidget {
  const CustomTitleParentsDashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: getHeight(AppDimensions.containerHeight45),
          width: getWidth(AppDimensions.containerWeight45),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(ImagePath.motherSonImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: getWidth(AppDimensions.space12)),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: AppStrings.welcome.tr,
              fontSize: getSp(AppDimensions.font11),
              fontWeight: FontWeight.w400,
              fontFamily: AppFont.popinice,
              color: AppColors.backgroundDark.withValues(alpha: 0.4),
            ),
            Row(
              children: [
                CustomText(
                  text: "Joy Lobo Mom",
                  fontFamily: AppFont.quicksand,
                  fontSize: getSp(AppDimensions.font16),
                  fontWeight: FontWeight.bold,
                  color: AppColors.backgroundDark,
                ),
                SizedBox(width: getWidth(AppDimensions.space8)),
                CustomSvgIcon(
                  assetName: ImagePath.leftIcon,
                  color: AppColors.backgroundDark,
                  height: getHeight(AppDimensions.imageHeight20),
                  width: getWidth(AppDimensions.imageWeight20),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
