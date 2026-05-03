import 'dart:ui';

import 'package:dino_dadi_app/core/core.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = RxInt(0);
  List<Map> navBarItem = [
    {"imagePath": ImagePath.teeth, "name": AppStrings.brushTeeth.tr},
    {"imagePath": ImagePath.dailRoutine, "name": AppStrings.dailyRoutine.tr},
    {"imagePath": ImagePath.goodNight, "name": AppStrings.goodNight.tr},
    {"imagePath": ImagePath.blueLight, "name": AppStrings.blueLight.tr},
  ];

  List<Map> cardItem = [
    {
      "boxImagePath": ImagePath.colorbox,
      "itemPath": ImagePath.colorItem,
      "text": AppStrings.colours.tr,
      "lock": "",

      //Home version-2 Screens
      "fastGradient": Color(0xFFFCDBCA),
      "secondGradient": Color(0xFFE6A5CC),
    },
    {
      "boxImagePath": ImagePath.shapeBox,
      "itemPath": ImagePath.shapeItem,
      "text": AppStrings.shape.tr,
      "lock": "",

      //Home version-2 Screens
      "fastGradient": Color(0xFFFFF1BE),
      "secondGradient": Color(0xFFFFE27A),
    },
    {
      "boxImagePath": ImagePath.animalsBox,
      "itemPath": ImagePath.animalItem,
      "text": AppStrings.animals.tr,
      "lock": ImagePath.lockIcon,

      //Home version-2 Screens
      "fastGradient": Color(0xFFFFECD2),
      "secondGradient": Color(0xFFFCB69F),
    },
    {
      "boxImagePath": ImagePath.numberBox,
      "itemPath": ImagePath.numberItem,
      "text": AppStrings.numbers.tr,
      "lock": ImagePath.lockIcon,

      //Home version-2 Screens
      "fastGradient": Color(0xFFBEFFD6),
      "secondGradient": Color(0xFF96E6A1),
    },
  ];

  RxDouble isMint = RxDouble(60.0);

  List<Map> dailyScreensList = [
    {
      "imagPath": ImagePath.moon,
      "title": "08:00 PM",
      "subtitle": AppStrings.scheduled.tr,
    },
    {
      "imagPath": ImagePath.timer,
      "title": "1h 30 m",
      "subtitle": AppStrings.screensTime.tr,
    },
    {
      "imagPath": ImagePath.lampCharge,
      "title": "2h 45 m",
      "subtitle": AppStrings.totalLearned.tr,
    },
  ];

  List<Map> moreItemCard = [
    {
      "title": AppStrings.viewStatistics.tr,
      "imagePath": ImagePath.viewStatistics,
    },
    {
      "title": AppStrings.adjustLanguage.tr,
      "imagePath": ImagePath.adjustLanguage,
    },
    {"title": AppStrings.volume.tr, "imagePath": ImagePath.volumeImage},
    {"title": AppStrings.offlineMode.tr, "imagePath": ImagePath.offlineMode},
    {"title": AppStrings.managePrivacy.tr, "imagePath": ImagePath.securitySafe},
    {"title": AppStrings.voice.tr, "imagePath": ImagePath.microPhone},
  ];

  //Home Screens age 2

  List<Map> adventurerItem = [
    {
      "imagePath": ImagePath.lettersBoxImage,
      "itemPath": ImagePath.aLetter,
      "text": AppStrings.letters.tr,
      "boxImageV": ImagePath.lettersVBox,
    },
    {
      "imagePath": ImagePath.weatherBoxImage,
      "itemPath": ImagePath.weatherImage,
      "text": AppStrings.weather.tr,
      "boxImageV": ImagePath.weatherVBox,
    },
    {
      "imagePath": ImagePath.cityTrafficBoxImage,
      "itemPath": ImagePath.cityTraffic,
      "text": AppStrings.cityTraffic.tr,
      "boxImageV": ImagePath.cityVBox,
    },
    {
      "imagePath": ImagePath.familyBoxImage,
      "itemPath": ImagePath.familyImage,
      "text": AppStrings.family.tr,
      "boxImageV": ImagePath.familyV,
    },
  ];
}
