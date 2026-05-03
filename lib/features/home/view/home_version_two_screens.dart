import 'package:dino_dadi_app/core/core.dart';
import 'package:dino_dadi_app/features/home/controller/home_controller.dart';
import 'package:dino_dadi_app/features/home/widgets/home_top_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/custome_container.dart';
import '../../../core/widgets/home_screens_version_two_item_custome.dart';
import '../../../routes/app_routes.dart';

class HomeVersionTwoScreens extends StatelessWidget {
  const HomeVersionTwoScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(body: HomeTopCard());
  }
}
