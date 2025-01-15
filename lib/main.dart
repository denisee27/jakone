import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakone/app/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(title: 'JakOne APP', debugShowCheckedModeBanner: false, initialRoute: '/', getPages: Routes.pages);
  }
}
