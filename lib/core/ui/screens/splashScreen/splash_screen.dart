import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'controllers/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController(Get.find()));
    return Scaffold(
      body: Center(
        child: Text("SplashScreen"),
      ),
    );
  }
}