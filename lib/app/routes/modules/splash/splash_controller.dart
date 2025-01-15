import 'dart:async';
import 'package:get/get.dart';

class SplashController extends GetxController {
  var opacity = 0.0.obs;

  @override
  onInit() {
    super.onInit();
    fadeInLogo();
    movePage();
  }

  movePage() async {
    Timer(const Duration(seconds: 4), () {
      Get.offAllNamed('/guest');
    });
  }

  fadeInLogo() {
    Future.delayed(Duration(milliseconds: 500), () {
      opacity.value = 1.0; // Mengubah opasitas menjadi penuh
    });
  }
}
