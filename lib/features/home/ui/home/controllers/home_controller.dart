import 'package:get/get.dart';
import '../../../../../core/navigation/app_navigation.dart';

class HomeController extends GetxController {
  final AppNavigation _appNavigation;
  HomeController(this._appNavigation);

  @override
  void onInit() {
    // Generate by Menosi_cli
    super.onInit();
  }

  void goBack(){
    _appNavigation.goBack();
  }
}