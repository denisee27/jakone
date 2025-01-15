import 'package:get/get.dart';
import 'package:jakone/app/routes/modules/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
