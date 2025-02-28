import 'package:flutter_starter/core/services/localServices/local_storage_service.dart';
import 'package:flutter_starter/core/utils/app_constants.dart';
import 'package:flutter_starter/features/error/ui/commingSoon/comming_soon_screen.dart';
import 'package:flutter_starter/features/home/navigation/private/home_private_routes.dart';
import 'package:get/get.dart';
import '../../../../../core/navigation/app_navigation.dart';

class DashboardController extends GetxController {
  final AppNavigation _appNavigation;
  DashboardController(this._appNavigation);
  final _localService = Get.find<LocalStorageService>();
  final loading = false.obs;

  final selectedIndex = 0.obs;
  @override
  void onInit() {
    // Generate by Menosi_cli
    super.onInit();
    initialCheck();
  }

  void goBack(){
    _appNavigation.goBack();
  }
  void initialCheck() async {
    loading.value = true;
    if (_localService.read(AppConstants.tokenKey) == null) {
      await Future.delayed(const Duration(seconds: 1));
      await _appNavigation.toNamedAndReplaceAll(
          HomePrivateRoutes.onboarding);
      loading.value = false;
    } else {
      loading.value = false;
    }
  }
  void onItemTapped(int index) {
    // ====== Move THIS CONDITION IF YOU WANT TO WIEW THE CONTAINE OF ODER SCREEN =======
    if (index != 0 && index !=3) {
      Get.to(
            () => CommingSoonScreen(),
        transition: Transition.rightToLeft,
      )?.then((_) {
        selectedIndex.value = 0;
      });
    } else {
      // Mets à jour l'index pour changer de page
      selectedIndex.value = index;
    }
    // =======
  }

}
