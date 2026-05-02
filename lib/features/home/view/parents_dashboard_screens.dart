import 'package:dino_dadi_app/core/core.dart';
import 'package:dino_dadi_app/core/widgets/custome_container.dart';
import 'package:dino_dadi_app/features/home/controller/home_Controller.dart';
import 'package:dino_dadi_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/widgets/Custom_learning_activity-card.dart';
import '../../../core/widgets/custom_title_parents_dashboard_appbar.dart';
import '../../../core/widgets/custom_update_to_Premium_card.dart';
import '../../../core/widgets/custome_daily_screens_time_card.dart';
import '../../../core/widgets/progress_Painter.dart';

class ParentsDashbord extends StatelessWidget {
  const ParentsDashbord({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final controller = Get.find<HomeController>();
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: true,
        leadingWidth: 100,
        leading: Padding(
          padding: EdgeInsets.only(left: getWidth(AppDimensions.padding14)),
          child: CustomeContainer(
            color: AppColors.appColorBG,
            imagePath: CustomSvgIcon(assetName: ImagePath.arrowBack),
          ),
        ),
        title: Padding(
          padding: EdgeInsetsGeometry.only(
            left: getWidth(AppDimensions.padding6),
          ),
          child: CustomTitleParentsDashboardAppbar(),
        ),
        action: [
          CustomeContainer(
            color: AppColors.appColorBG,
            imagePath: CustomSvgIcon(assetName: ImagePath.settingIcon),
          ),
          SizedBox(width: getWidth(AppDimensions.space10)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: getWidth(AppDimensions.padding16),
            right: getWidth(AppDimensions.padding16),
            top: getHeight(AppDimensions.padding16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomUpdateToPremiumCard(),

              SizedBox(height: getHeight(AppDimensions.space24)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: AppStrings.dailyScreenTime.tr,
                    fontFamily: AppFont.quicksand,
                    fontSize: getSp(AppDimensions.font20),
                    color: AppColors.backgroundDark,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        CustomText(
                          text: AppStrings.edit.tr,
                          fontSize: getSp(AppDimensions.font16),
                          fontWeight: FontWeight.bold,
                          color: AppColors.pinkColor,
                          fontFamily: AppFont.quicksand,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppColors.pinkColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: getHeight(AppDimensions.space4)),
              CustomeDailyScreensTimeCard(),
              SizedBox(height: getHeight(AppDimensions.space24)),
              CustomText(
                text: AppStrings.learningActivity.tr,
                fontSize: getSp(AppDimensions.font20),
                color: AppColors.backgroundDark,
                fontFamily: AppFont.quicksand,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: getHeight(AppDimensions.space8)),
              CustomLearningActivityCard(),
              SizedBox(height: getHeight(AppDimensions.space8)),
              CustomLearningActivityCard(
                imagePath: ImagePath.animalLearningImage,
                title: AppStrings.animalLearning.tr,
                currentMin: 30,
                time: "30 min",
                activeColor: AppColors.yellow,
              ),
              SizedBox(height: getHeight(AppDimensions.space8)),
              CustomLearningActivityCard(
                imagePath: ImagePath.aLetter,
                title: AppStrings.letters.tr,
                currentMin: 45,
                time: "45 min",
                activeColor: AppColors.green,
              ),
              SizedBox(height: getHeight(AppDimensions.space24)),
              CustomText(
                text: AppStrings.more.tr,
                fontSize: getSp(AppDimensions.font20),
                fontWeight: FontWeight.w700,
                color: AppColors.backgroundDark,
                fontFamily: AppFont.quicksand,
                letterSpacing: -1,
              ),
              SizedBox(height: getHeight(AppDimensions.space8)),
              SizedBox(
                height: 500,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 7.0,
                    childAspectRatio: 1.69,
                  ),
                  itemCount: controller.moreItemCard.length,
                  itemBuilder: (context, index) {
                    final moreCard = controller.moreItemCard[index];
                    return GestureDetector(
                      onTap: (){
                        if(index==0){
                          Get.toNamed(AppRoutes.homeScreens);
                        }
                      },
                      child: Container(
                        padding: EdgeInsetsGeometry.only(
                          top: getHeight(AppDimensions.padding14),
                          left: getWidth(AppDimensions.padding14),
                          bottom: getHeight(AppDimensions.padding14),
                          right: getWidth(AppDimensions.padding16),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getRadius(AppDimensions.radius20),
                          ),
                          color: AppColors.appColorBG,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: moreCard['title'],
                              fontSize: getSp(AppDimensions.font16),
                              fontFamily: AppFont.quicksand,
                              fontWeight: FontWeight.w700,
                              color: AppColors.backgroundDark,
                              letterSpacing: -0.4,
                            ),
                            SizedBox(height: getHeight(AppDimensions.space16)),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: getHeight(
                                  AppDimensions.containerHeight40,
                                ),
                                width: getWidth(AppDimensions.containerWeight40),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.elevatedSurfaceLight,
                                ),
                                child: Center(
                                  child: CustomSvgIcon(
                                    assetName: moreCard['imagePath'],
                                    height: getHeight(
                                      AppDimensions.imageHeight28,
                                    ),
                                    width: getWidth(AppDimensions.imageWeight28),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
