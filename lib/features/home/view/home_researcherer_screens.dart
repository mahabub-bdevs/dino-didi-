import 'package:dino_dadi_app/core/core.dart';
import 'package:dino_dadi_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/custome_container.dart';
import '../widgets/home_researcherer_custome.dart';

class HomeResearchererScreens extends StatelessWidget {
  const HomeResearchererScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.appGradient.withValues(alpha: 0.5),
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
              height: getHeight(AppDimensions.containerHeight260),
              child: Stack(
                children: [
                  Positioned(
                    top: 60,
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
                      ImagePath.didiResearcherImage,
                      height: 110,
                      width: 316,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 120,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getWidth(AppDimensions.padding75),
                      ),
                      child: Image.asset(
                        ImagePath.skyImage,
                        height: getHeight(140),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 137,
                    child: Image.asset(
                      ImagePath.diniForsImage,
                      height: getHeight(AppDimensions.imageHeight110),
                      width: getWidth(AppDimensions.imageWeight165),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 193,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.homeResearchererVTwoScreens);
                      },
                      child: CustomSvgIcon(assetName: ImagePath.askDidi),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: getHeight(AppDimensions.space10)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimensions.padding6),
              child: HomeResearchererCustome(),
            ),
          ],
        ),
      ),
    );
  }
}
