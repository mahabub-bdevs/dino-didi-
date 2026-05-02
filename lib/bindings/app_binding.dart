import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../features/home/controller/home_Controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);

    //
    // Get.lazyPut<AuthController>(() => AuthController(), fenix: true);
    // Get.lazyPut<MainController>(() => MainController(), fenix: true);
    // Get.lazyPut<Homecontroller>(() => Homecontroller(), fenix: true);
    // Get.lazyPut<ControllerSearch>(() => ControllerSearch(), fenix: true);
    // Get.lazyPut<TransferController>(() => TransferController(), fenix: true);
    // Get.lazyPut<MessageController>(() => MessageController(), fenix: true);
    // Get.lazyPut<SettingsController>(() => SettingsController(), fenix: true);
  }
}
