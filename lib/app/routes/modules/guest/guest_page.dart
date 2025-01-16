import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakone/app/routes/modules/guest/guest_controller.dart';
import 'package:jakone/app/routes/modules/utils/colors/colors.dart';

class GuestPage extends GetView<GuestController> {
  const GuestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      top: true,
      minimum: EdgeInsets.only(top: 50, bottom: 20),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 20,
            child: Image.asset(
              'assets/help.png',
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            offset: Offset(0, 5),
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CountryFlag.fromCountryCode(
                              'ID',
                              borderRadius: 250,
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 10),
                            CountryFlag.fromCountryCode(
                              'GB',
                              borderRadius: 250,
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            offset: Offset(0, 5),
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                        child: Row(
                          children: [
                            Icon(
                              Icons.credit_card,
                              size: 15,
                            ),
                            Container(
                              child: Image.asset(
                                'assets/jakcard.png',
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 100),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 250,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/monas.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 40,
                          right: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              color: secondary,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1),
                              child: Text(
                                'Monumen Nasional',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 50),
                      child: Text(
                        'Explore Jakarta With Jakarta Tourist Pass',
                        style: TextStyle(color: primary, fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offAllNamed('/home');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Continue as a Guest',
                          style: TextStyle(fontSize: 23),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offAllNamed('/home');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                              color: primary,
                              width: 2.0,
                            ),
                          ),
                        ),
                        child: Text(
                          'Continue as a Guest',
                          style: TextStyle(color: primary, fontSize: 23),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container()
            ],
          ),
        ],
      ),
    ));
  }
}
