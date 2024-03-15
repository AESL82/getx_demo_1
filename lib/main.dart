import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getx_demo_1/controllers/global_controller.dart';
import 'package:getx_demo_1/pages/reactive_page.dart';
import 'package:getx_demo_1/pages/splash_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      const [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    Get.put(GlobalController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Demo 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const SplashPage(),
      home: const ReactivePage(),
    );
  }
}
