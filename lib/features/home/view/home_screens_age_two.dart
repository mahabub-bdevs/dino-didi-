import 'package:dino_dadi_app/core/core.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/custome_container.dart';
import '../widgets/home_age_two_custom.dart';

class HomeScreensAgeTwo extends StatelessWidget {
  const HomeScreensAgeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.appGradient.withValues(alpha: 0.6),
              AppColors.appGradient.withValues(alpha: 0.09),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: AppDimensions.imageWeight315,
              child: Stack(
                children: [
                  Positioned(
                    top: 40,
                    right: 20,
                    child: CustomeContainer(
                      imagePath: CustomSvgIcon(
                        assetName: ImagePath.settingIcon,
                        height: getHeight(AppDimensions.imageHeight28),
                        width: getWidth(AppDimensions.imageWeight28),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 70,
                    child: Image.asset(
                      ImagePath.didiTheAdventurer,
                      height: AppDimensions.imageHeight80,
                      width: AppDimensions.imageWeight315,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 118,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getWidth(AppDimensions.padding75),
                      ),
                      child: Image.asset(ImagePath.skyImage),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 134,
                    child: Image.asset(
                      ImagePath.dinoDiniAdventureImage,
                      height: getHeight(AppDimensions.imageHeight110),
                      width: getWidth(AppDimensions.imageWeight165),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 193,
                    child: CustomSvgIcon(assetName: ImagePath.askDidi),
                  ),
                ],
              ),
            ),

            SizedBox(height: getHeight(AppDimensions.space10)),
            HomeAgeTwoCustom(),
          ],
        ),
      ),
    );
  }
}
