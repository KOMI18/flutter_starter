import 'package:get/get.dart';
import '../../../../navigation/app_navigation.dart';
import '../../../../navigation/routes/app_routes.dart';

class SplashController extends GetxController {
  final AppNavigation _appNavigation;
  SplashController(this._appNavigation);

  @override
  void onInit() {
    super.onInit();
    _navigateToNextPage();
  }

  Future<void> _navigateToNextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    _appNavigation.toNamedAndReplaceAll(AppRoutes.home);
  }
}