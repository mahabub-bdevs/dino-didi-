import 'package:dino_dadi_app/core/core.dart';
import 'package:dino_dadi_app/core/widgets/cloud_shape.dart';
import 'package:dino_dadi_app/core/widgets/custome_container.dart';
import 'package:dino_dadi_app/features/home/controller/home_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/home_screens_item_card_custome.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.appGradient.withValues(alpha: 0.7),
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
              height: getHeight(AppDimensions.containerHeight265),
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
                    top: 50,
                    child: SizedBox(
                      child: CustomSvgIcon(
                        assetName: ImagePath.didiTheExplorer,
                        height: getHeight(64),
                        width: getWidth(316),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getWidth(AppDimensions.padding60),
                      ),
                      child: Image.asset(
                        ImagePath.skyImage,
                        width: getWidth(270),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 110,
                    child: Image.asset(
                      ImagePath.homeImage,
                      height: getHeight(AppDimensions.imageHeight165),
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
            HomeScreensItemCardCustom(),
          ],
        ),
      ),
    );
  }
}
