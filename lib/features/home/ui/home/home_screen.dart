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
        child: Text("Welcome to Home Screen"),
      ),
    );
  }
}