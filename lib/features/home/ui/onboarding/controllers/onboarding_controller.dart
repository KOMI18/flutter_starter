import 'package:flutter_starter/core/services/localServices/local_storage_service.dart';
import 'package:flutter_starter/core/utils/app_constants.dart';
import 'package:flutter_starter/features/home/navigation/private/home_private_routes.dart';
import 'package:get/get.dart';
import '../../../../../core/navigation/app_navigation.dart';
import 'package:flutter/material.dart';
class OnboardingController extends GetxController {
  final AppNavigation _appNavigation;
  OnboardingController(this._appNavigation);

  late PageController pageController;
  final currentPage = 0.obs;

  final _localStorageService = Get.find<LocalStorageService>();

  @override
  void onInit() {
    // Generate by Menosi_cli
    super.onInit();
    if(_localStorageService.read(AppConstants.firstOpen) != null) {
      currentPage.value = 2;
      pageController = PageController(initialPage: currentPage.value);
    } else {
      currentPage.value = 0;
      pageController = PageController(initialPage: currentPage.value);
    }
  }

  void goBack() {
    _appNavigation.goBack();
  }

  void onPageChange(int index) {
    currentPage.value = index;
    update();
  }
  void goHome(){
    _localStorageService.write(AppConstants.tokenKey, "YOUR_TOKEN_AFTER_LOGIN_PROCESS");
    // HERE IT IS REDIRECTED TO THE DASHBOORS
    // AND THE LOGIC THAT IS IN THE DASHBOQED
    // CONTROLLER WILL CHECK IF THE TOKEN IS PRESENT
    // AND BROWSE THE USER TO THE APPROPRIATE PAGE
    _appNavigation.toNamed(HomePrivateRoutes.dashboard);
  }
}
