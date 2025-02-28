import 'package:flutter_starter/core/services/localServices/local_storage_service.dart';
import 'package:flutter_starter/core/utils/app_constants.dart';
import 'package:flutter_starter/features/home/navigation/private/home_private_routes.dart';
import 'package:get/get.dart';
import '../../../../../core/navigation/app_navigation.dart';

class HomeController extends GetxController {
  final AppNavigation _appNavigation;
  final _localStorageService = Get.find<LocalStorageService>();

  HomeController(this._appNavigation);

  @override
  void onInit() {
    // Generate by Menosi_cli
    super.onInit();
  }

  void goBack(){
    _appNavigation.goBack();
  }
  void logout(){
    _localStorageService.delete(AppConstants.tokenKey);
    _appNavigation.toNamed(HomePrivateRoutes.onboarding);
  }
}