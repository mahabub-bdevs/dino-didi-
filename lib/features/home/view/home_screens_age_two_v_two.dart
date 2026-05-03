import 'package:dino_dadi_app/core/core.dart';
import 'package:dino_dadi_app/features/home/controller/home_Controller.dart';
import 'package:dino_dadi_app/features/home/widgets/home_top_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/home_age_V_two_screens.dart';

class HomeScreensAgeTwoVTwo extends StatelessWidget {
  const HomeScreensAgeTwoVTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      body: HomeTopCard(
        dinoDidiImage: Image.asset(
          ImagePath.dinoDiniAbenturVTwo,
          height: getHeight(AppDimensions.imageHeight161),
          width: getWidth(AppDimensions.imageWeight128),
        ),
        text: CustomText(
          text: "Didi the Adventurer",
          fontSize: getSp(AppDimensions.font30),
          fontWeight: FontWeight.w700,
          color: AppColors.backgroundDark,
          fontFamily: AppFont.quicksand,
        ),
        bodyDesign: HomeAgeVTwoScreens(),
      ),
    );
  }
}
