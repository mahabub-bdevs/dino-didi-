import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../features/home/controller/home_controller.dart';
import '../../routes/app_routes.dart';
import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';
import '../utils/app_images.dart';
import '../utils/app_size_class.dart';
import 'custom_svg_icon.dart';
import 'custom_text.dart';

class HomeScreensVersionTwoItemCustom extends StatelessWidget {
  final String? boxImage;
  final String? itemImage;
  final String? text;
  const HomeScreensVersionTwoItemCustom({
    super.key,
    this.boxImage,
    this.itemImage,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: getHeight(AppDimensions.padding14),
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
                  final cardItem = controller.cardItem[index];
                  return GestureDetector(
                    onTap: () {
                      if (index == 2) {
                        Get.toNamed(AppRoutes.homeScreensAgeTwo);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.backgroundDark.withValues(
                              alpha: 0.2,
                            ),
                            blurRadius: 4.0,
                            blurStyle: BlurStyle.inner,
                            offset: Offset(1.4, 4.0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                          getRadius(AppDimensions.radius20),
                        ),
                        border: BoxBorder.all(
                          width: 4.2,
                          color: AppColors.elevatedSurfaceLight,
                        ),
                        gradient: LinearGradient(
                          colors: [
                            cardItem['fastGradient'],
                            cardItem['secondGradient'],
                          ],
                          begin: AlignmentGeometry.topCenter,
                          end: AlignmentGeometry.bottomCenter,
                          tileMode: TileMode.mirror,
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
                            letterSpacing: -1,
                          ),
                        ],
                      ),
                    ),
                  );
                }, childCount: controller.cardItem.length),
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
                  top: getHeight(AppDimensions.padding100),
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

                            CustomText(
                              textAlign: TextAlign.center,
                              text: item['name'],
                              fontSize: getSp(AppDimensions.font16),
                              fontWeight: FontWeight.w700,
                              color: AppColors.backgroundDark,
                              fontFamily: AppFont.quicksand,
                              lineHeight: 1.0,
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
