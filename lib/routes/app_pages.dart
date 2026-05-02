import 'package:dino_dadi_app/features/home/view/home_screens.dart';
import 'package:dino_dadi_app/features/home/view/home_screens_age_two.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:flutter/material.dart';

import '../features/home/view/home_researcherer_screens.dart';
import '../features/home/view/home_researcherer_v_two_screens.dart';
import '../features/home/view/home_screens_age_two_v_two.dart';
import '../features/home/view/home_version_two_screens.dart';
import '../features/home/view/parents_dashboard_screens.dart';
import '../features/main/view/main_screens.dart';
import 'app_routes.dart';

class AppPages {
  // Bindings are now handled globally in AppBinding (fenix: true)
  static final routes = [
    GetPage(name: AppRoutes.mainScreens, page: () => const MainScreens()),
    GetPage(name: AppRoutes.homeScreens, page: () => const HomeScreens()),
    GetPage(
      name: AppRoutes.parentsDashbord,
      page: () => const ParentsDashbord(),
    ),
    GetPage(
      name: AppRoutes.homeVersionTwoScreens,
      page: () => const HomeVersionTwoScreens(),
    ),
    GetPage(
      name: AppRoutes.homeScreensAgeTwo,
      page: () => const HomeScreensAgeTwo(),
    ),
    GetPage(
      name: AppRoutes.homeScreensAgeTwoVTwo,
      page: () => const HomeScreensAgeTwoVTwo(),
    ),
    GetPage(
      name: AppRoutes.homeResearchererScreens,
      page: () => const HomeResearchererScreens(),
    ),
    GetPage(
      name: AppRoutes.homeResearchererVTwoScreens,
      page: () => const HomeResearchererVTwoScreens(),
    ),
  ];
}
