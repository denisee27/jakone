import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakone/app/routes/modules/splash/splash_controller.dart';
import 'package:jakone/app/routes/modules/utils/colors/colors.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                secondary,
                primary,
              ],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/top_second.png',
                ),
              ),
              Positioned(
                top: 50,
                left: 0,
                child: Image.asset(
                  'assets/top_main.png',
                ),
              ),
              Positioned(
                bottom: 80,
                right: 0,
                child: Image.asset(
                  'assets/bottom_main.png',
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'assets/bottom_second.png',
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Obx(() {
                    return AnimatedOpacity(
                      opacity: controller.opacity.value,
                      duration: Duration(seconds: 2),
                      child: Image.asset(
                        'assets/logo.png',
                        width: 350,
                        height: 340,
                      ),
                    );
                  }),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/ojk.png',
                          width: 400,
                        ),
                        Column(
                          children: [
                            Text('Powered By Bank DKI', style: TextStyle(color: Colors.white, fontSize: 10)),
                            Text('2023', style: TextStyle(color: Colors.white, fontSize: 15))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
