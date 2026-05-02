import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_size_class.dart';
import '../../../core/widgets/custom_svg_icon.dart';
import '../../../core/widgets/custom_text.dart';
import '../../../routes/app_routes.dart';
import '../controller/home_Controller.dart';

class HomeAgeVTwoScreens extends StatelessWidget {
  const HomeAgeVTwoScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: getHeight(AppDimensions.padding24),
          left: getWidth(AppDimensions.padding16),
          right: getWidth(AppDimensions.padding16),
          bottom: getHeight(AppDimensions.padding35),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                child: Stack(clipBehavior: Clip.none, children: []),
              ),
            ),

            SliverPadding(
              padding: EdgeInsets.zero,
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final cardItem = controller.adventurerItem[index];
                  return GestureDetector(
                    onTap: () {
                      if (index == 2) {
                        Get.toNamed(AppRoutes.homeResearchererScreens);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(cardItem['boxImageV']),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (index == 2 || index == 3)
                            Align(
                              alignment: AlignmentGeometry.topRight,
                              child: Container(
                                margin: EdgeInsetsGeometry.only(
                                  right: AppDimensions.padding14,
                                ),
                                height: getHeight(24),
                                width: getWidth(24),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.backgroundDark
                                          .withValues(alpha: 0.1),
                                      blurRadius: 2.0,
                                      blurStyle: BlurStyle.normal,
                                      offset: Offset(0.1, 4.0),
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                  color: AppColors.elevatedSurfaceLight,
                                ),
                                child: Center(
                                  child: CustomSvgIcon(
                                    assetName: ImagePath.lockIcon,
                                  ),
                                ),
                              ),
                            ),
                          Image.asset(
                            cardItem['itemPath'],
                            height: getHeight(AppDimensions.imageHeight95),
                            width: getWidth(AppDimensions.imageWeight90),
                          ),
                          SizedBox(height: getHeight(AppDimensions.space16)),
                          CustomText(
                            text: cardItem['text'],
                            fontSize: getSp(AppDimensions.font20),
                            fontWeight: FontWeight.w700,
                            fontFamily: AppFont.quicksand,
                            color: AppColors.backgroundDark,
                          ),
                        ],
                      ),
                    ),
                  );
                }, childCount: controller.adventurerItem.length),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 13,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  top: getHeight(AppDimensions.padding90),
                ),
                child: SizedBox(
                  height: getHeight(AppDimensions.containerHeight140),
                  child: Center(
                    child: ListView.builder(
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
                            Container(
                              height: getHeight(
                                AppDimensions.containerHeight70,
                              ),
                              width: getWidth(AppDimensions.containerWeight70),
                              margin: EdgeInsets.symmetric(horizontal: 19),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.elevatedSurfaceLight,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.backgroundDark.withValues(
                                      alpha: 0.3,
                                    ),
                                    blurStyle: BlurStyle.normal,
                                    blurRadius: 4.0,
                                    offset: Offset(0.1, 5.0),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: SizedBox(
                                  height: getHeight(
                                    AppDimensions.imageHeight45,
                                  ),
                                  width: getWidth(AppDimensions.imageWeight46),
                                  child: Image.asset(
                                    item['imagePath'] ?? '',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: getHeight(AppDimensions.space6)),
                            CustomText(
                              textAlign: TextAlign.center,
                              text: item['name'],
                              fontSize: getSp(AppDimensions.font16),
                              fontWeight: FontWeight.w700,
                              color: AppColors.backgroundDark,
                              fontFamily: AppFont.quicksand,
                              lineHeight: 1.1,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
