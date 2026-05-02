import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/utils/app_size_class.dart';
import '../controller/controller.dart';


class MainScreens extends StatelessWidget {
  const MainScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.put(MainController());

    return Scaffold(
      backgroundColor: Colors.white,

      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.screens
        )),


      bottomNavigationBar: Container(
        padding: EdgeInsetsGeometry.only(
          left: getWidth(AppDimensions.padding40),
          top: getHeight(AppDimensions.padding20),
          bottom: getHeight(AppDimensions.padding20),
          right: getWidth(AppDimensions.padding36),
        ),
        decoration: BoxDecoration(
          color: AppColors.elevatedSurfaceLight,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1), // হালকা শ্যাডো
            ),
          ],
        ),
        child: SafeArea(
          child: Obx(
            () => GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 10,
              activeColor: Colors.white,
              iconSize: getHeight(24),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ), // ট্যাবের ভেতরের প্যাডিং
              duration: const Duration(milliseconds: 400),

              color: Colors.black.withOpacity(0.6),

              tabBackgroundColor: const Color(0xFF330099),
              tabBorderRadius: 100,

              selectedIndex: controller.selectedIndex.value,
              onTabChange: (index) {
                controller.selectedIndex.value = index;
              },

              tabs: [
                GButton(icon: Icons.home_outlined, text: 'Home'),
                GButton(
                  icon: Icons.search, // সার্চ আইকন
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.mail_outline, // মেইল আইকন
                  text: 'Messages',
                ),
                GButton(
                  icon: Icons.settings_outlined, // সেটিংস আইকন
                  text: 'Settings',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
