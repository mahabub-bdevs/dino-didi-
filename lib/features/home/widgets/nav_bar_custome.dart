import 'package:dino_dadi_app/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_size_class.dart';
import '../../../core/widgets/custom_text.dart';

class NavBarCustom extends StatelessWidget {
  final Widget? boxContainer;
  final bool? isShadow;
  const NavBarCustom({super.key, this.boxContainer, this.isShadow});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return ListView.builder(
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
                  image: DecorationImage(
                    image: AssetImage(ImagePath.navBarImage),
                  ),
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
              lineHeight: 1.0,
            ),
          ],
        );
      },
    );
  }
}
