import 'package:get/get.dart';
import 'package:jakone/app/routes/modules/home/home_controller.dart';
import 'package:jakone/app/routes/modules/splash/splash_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
