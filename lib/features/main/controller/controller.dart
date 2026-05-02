import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> screens = [
    // const HomeScreens(),
    // const SearchScreens(),
    // const MessageScreens(),
    // const SettingsScreens(),
  ];
}
