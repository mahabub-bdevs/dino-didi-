import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_size_class.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_svg_icon.dart';
import '../../../core/widgets/custom_text.dart';
import '../../../core/widgets/custome_container.dart';
import '../../../core/widgets/home_screens_version_two_item_custome.dart';

class HomeTopCard extends StatelessWidget {
  final Widget? dinoDidiImage;
  final Widget? button;
  final Widget? topImage;
  final Gradient? gradientColor;
  final Widget? bodyDesign;
  final Widget? text;
  const HomeTopCard({
    super.key,
    this.dinoDidiImage,
    this.button,
    this.topImage,
    this.gradientColor,
    this.text,
    this.bodyDesign,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient:
            gradientColor ??
            LinearGradient(
              colors: [
                Color(0xFFA6D8FF).withValues(alpha: 0.7),
                AppColors.elevatedSurfaceLight,
              ],
              begin: AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
              tileMode: TileMode.mirror,
            ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 315,
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  right: 20,
                  child: CustomeContainer(
                    height: getHeight(AppDimensions.containerHeight45),
                    width: getWidth(AppDimensions.containerWeight45),
                    imagePath: GestureDetector(
                      child: CustomSvgIcon(
                        assetName: ImagePath.settingIcon,
                        height: getHeight(AppDimensions.imageHeight30),
                        width: getWidth(AppDimensions.imageWeight30),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 60,
                  top: 70,
                  child:
                      dinoDidiImage ??
                      Image.asset(
                        ImagePath.dinoDiniYoungImage,
                        height: getHeight(AppDimensions.imageHeight161),
                        width: getWidth(AppDimensions.imageWeight128),
                      ),
                ),
                Positioned(
                  left: 196,
                  top: 70,
                  right: 0,
                  child:
                      button ??
                      Image.asset(
                        ImagePath.askDidiCircularImage,
                        height: getHeight(AppDimensions.imageHeight100),
                        width: getWidth(AppDimensions.imageWeight94),
                      ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 270,
                  child: Center(
                    child:
                        text ??
                        CustomText(
                          text: AppStrings.didiTheExplorer.tr,
                          fontSize: getSp(AppDimensions.font30),
                          color: AppColors.backgroundDark,
                          fontFamily: AppFont.quicksand,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
              ],
            ),
          ),

          bodyDesign ?? HomeScreensVersionTwoItemCustom(),
        ],
      ),
    );
  }
}
