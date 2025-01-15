import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakone/app/routes/modules/home/home_controller.dart';
import 'package:jakone/app/routes/modules/utils/colors/colors.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Stack(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    primary,
                    secondary,
                  ],
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70), bottomRight: Radius.circular(70))),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/logo.png',
                        width: 150,
                      ),
                    ),
                    Row(children: [
                      Container(
                        width: 40, // Ukuran lebar lingkaran
                        height: 40, // Ukuran tinggi lingkaran
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4), // Warna shadow
                              offset: Offset(0, 6), // Posisi shadow di bawah (horizontal, vertical)
                              blurRadius: 5, // Mengatur seberapa blur shadow
                              spreadRadius: 0, // Tidak perlu spread ke luar
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              primary, // Warna awal gradasi
                              secondary, // Warna akhir gradasi
                            ],
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent, // Membuat latar belakang transparan
                          child: Icon(
                            Icons.description_outlined,
                            color: Colors.white, // Warna ikon
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 40, // Ukuran lebar lingkaran
                        height: 40, // Ukuran tinggi lingkaran
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4), // Warna shadow
                              offset: Offset(0, 6), // Posisi shadow di bawah (horizontal, vertical)
                              blurRadius: 5, // Mengatur seberapa blur shadow
                              spreadRadius: 0, // Tidak perlu spread ke luar
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              primary, // Warna awal gradasi
                              secondary, // Warna akhir gradasi
                            ],
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent, // Membuat latar belakang transparan
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white, // Warna ikon
                          ),
                        ),
                      )
                    ])
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20),
                child: Row(children: [
                  Container(
                    child: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.white,
                      size: 70,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning,',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      Text('Guest', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20))
                    ],
                  )
                ]),
              )
            ],
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 190),
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4), // Warna shadow
                        offset: Offset(0, 8), // Posisi shadow di bawah (horizontal, vertical)
                        blurRadius: 6, // Mengatur seberapa blur shadow
                        spreadRadius: 0, // Tidak perlu spread ke luar
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 18,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                primary,
                                secondary,
                              ],
                            ),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topLeft: Radius.circular(20))),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        width: MediaQuery.of(context).size.width * 0.73,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Balance Account',
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text('Rp'),
                                      Text(
                                        '0',
                                        style: TextStyle(fontSize: 25),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 90,
                                    height: 45,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: primary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          side: BorderSide(
                                            color: yellow,
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        'Top Up',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(child: Text('-')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(child: Text('KEEASDASDA')),
              // Positioned(
              //   top: 10,
              //   right: 0,
              //   child: Image.asset(
              //     'assets/help.png', // Ganti dengan path gambar Anda
              //   ),
              // ),
            ],
          ),
        ],
      ),
    ));
  }
}
