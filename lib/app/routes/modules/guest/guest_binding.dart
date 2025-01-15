import 'package:get/get.dart';
import 'package:jakone/app/routes/modules/guest/guest_controller.dart';
import 'package:jakone/app/routes/modules/splash/splash_controller.dart';

class GuestBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(GuestController());
  }
}
