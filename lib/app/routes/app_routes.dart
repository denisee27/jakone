import 'package:get/get.dart';
import 'package:jakone/app/routes/modules/home/home_binding.dart';
import 'package:jakone/app/routes/modules/home/home_page.dart';
import 'package:jakone/app/routes/modules/splash/splash_binding.dart';
import 'package:jakone/app/routes/modules/splash/splash_page.dart';
import 'package:jakone/app/routes/modules/guest/guest_binding.dart';
import 'package:jakone/app/routes/modules/guest/guest_page.dart';

class Routes {
  static final pages = [
    GetPage(name: '/', page: () => const SplashPage(), binding: SplashBinding()),
    GetPage(name: '/home', page: () => const HomePage(), binding: HomeBinding()),
    GetPage(name: '/guest', page: () => const GuestPage(), binding: GuestBinding())
  ];
}
