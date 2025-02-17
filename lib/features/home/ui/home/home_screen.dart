import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'controllers/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title:  Text("Home Screen"),
      ),
      body:  Center(
        child:
        Text(
          "Congratulation 🎉 ! , You have successfully run Flutter starter ✅",
          textAlign: TextAlign.center,
          softWrap: true,
          overflow: TextOverflow.visible,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )

      ),
    );
  }
}