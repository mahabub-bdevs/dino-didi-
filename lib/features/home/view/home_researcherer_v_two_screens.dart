import 'package:dino_dadi_app/core/core.dart';
import 'package:dino_dadi_app/features/home/controller/home_Controller.dart';
import 'package:dino_dadi_app/features/home/widgets/home_top_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/widgets/custome_container.dart';
import '../../../core/widgets/home_screens_version_two_item_custome.dart';
import '../widgets/home_researcherer_custome.dart';

class HomeResearchererVTwoScreens extends StatelessWidget {
  const HomeResearchererVTwoScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.appVersionGradient.withValues(alpha: 0.7),
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
              height: getHeight(AppDimensions.containerWeight290),
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
                    child: Image.asset(
                      ImagePath.diniForsVTwoImage,
                      height: getHeight(AppDimensions.imageHeight161),
                      width: getWidth(AppDimensions.imageWeight128),
                    ),
                  ),
                  Positioned(
                    left: 196,
                    top: 70,
                    right: 0,
                    child: Image.asset(
                      ImagePath.askDidiCircularImage,
                      height: getHeight(AppDimensions.imageHeight100),
                      width: getWidth(AppDimensions.imageWeight94),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 280,
                    child: Center(
                      child: CustomText(
                        text: AppStrings.diditheResearcherer.tr,
                        fontSize: getSp(AppDimensions.font30),
                        color: AppColors.backgroundDark,
                        fontFamily: AppFont.quicksand,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            HomeResearchererCustome(
              boxImage: ImagePath.worldBoxImage,
              boxImageTwo: ImagePath.emergencyBoxVImage,
              boxImageThree: ImagePath.dinosaureBoxVImage,
              navBar: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.navBarItem.length,
                itemBuilder: (context, index) {
                  final item = controller.navBarItem[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: getHeight(AppDimensions.containerHeight70),
                          width: getWidth(AppDimensions.containerWeight70),
                          margin: EdgeInsets.symmetric(
                            horizontal: getWidth(AppDimensions.space19),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.elevatedSurfaceLight,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.backgroundDark.withValues(
                                  alpha: 0.3,
                                ),
                                blurRadius: 4.0,
                                offset: Offset(0.0, 4.9),
                                blurStyle: BlurStyle.normal,
                              ),
                            ],
                          ),
                          child: Center(
                            child: SizedBox(
                              height: getHeight(AppDimensions.imageHeight45),
                              width: getWidth(AppDimensions.imageWeight46),
                              child: Image.asset(
                                item['imagePath'] ?? '',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),

                      CustomText(
                        textAlign: TextAlign.center,
                        text: item['name'],
                        fontSize: getSp(AppDimensions.font16),
                        fontWeight: FontWeight.w700,
                        color: AppColors.backgroundDark,
                        fontFamily: AppFont.quicksand,
                        lineHeight: 1.2,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
