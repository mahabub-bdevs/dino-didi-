import 'package:dino_dadi_app/core/core.dart';
import 'package:dino_dadi_app/features/home/widgets/nav_bar_custome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeResearchererCustome extends StatelessWidget {
  final String? boxImage;
  final String? boxImageTwo;
  final String? boxImageThree;
  final Widget? navBar;
  const HomeResearchererCustome({
    super.key,
    this.boxImage,
    this.boxImageTwo,
    this.boxImageThree,
    this.navBar,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _customContainer(
                  boxImage: boxImage ?? ImagePath.lettersBoxImage,
                  itemImage: ImagePath.wordImage,
                  text: AppStrings.world.tr,
                ),

                _customContainer(
                  boxImage: boxImage ?? ImagePath.emergencyBoxImage,
                ),
              ],
            ),
          ),

          SizedBox(height: getHeight(AppDimensions.space10)),
          _customedinosaureContainer(
            boxImage: boxImageThree ?? ImagePath.dinosaureBoxImage,
          ),
          SizedBox(height: getHeight(AppDimensions.space130)),
          SizedBox(height: 150, child: navBar ?? NavBarCustom()),
        ],
      ),
    );
  }

  _customContainer({String? boxImage, String? itemImage, String? text}) {
    return Container(
      height: getHeight(177),
      width: getWidth(177),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(boxImage ?? ImagePath.emergencyBoxImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            itemImage ?? ImagePath.emergencyImage,
            width: getWidth(AppDimensions.imageHeight95),
            height: getHeight(AppDimensions.imageWeight110),
          ),

          CustomText(
            text: text ?? AppStrings.emergencyServices.tr,
            fontFamily: AppFont.quicksand,
            color: AppColors.backgroundDark,
            fontSize: getSp(AppDimensions.font20),
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
            lineHeight: 1.0,
          ),
        ],
      ),
    );
  }

  _customedinosaureContainer({String? boxImage}) {
    return Container(
      height: getHeight(180),
      width: getWidth(double.infinity),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(boxImage ?? ImagePath.dinosaureBoxImage),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 50,
            top: 15,
            child: Container(
              height: getHeight(AppDimensions.imageHeight24),
              width: getWidth(AppDimensions.imageWeight24),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.elevatedSurfaceLight,
              ),
              child: Center(
                child: CustomSvgIcon(
                  assetName: ImagePath.lockIcon,
                  height: getHeight(AppDimensions.icon20),
                  width: getWidth(AppDimensions.icon20),
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: 0,
            right: 0,
            child: Image.asset(
              ImagePath.dinosauresImage,
              height: getHeight(105),
              width: getWidth(113),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Center(
              child: CustomText(
                text: AppStrings.dinosaurs.tr,
                color: AppColors.backgroundDark,
                fontSize: getSp(AppDimensions.font20),
                fontWeight: FontWeight.w700,
                fontFamily: AppFont.quicksand,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
