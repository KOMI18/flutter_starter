//Don't translate me
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../navigation/app_navigation.dart';
import '../navigation/getx_navigation_impl.dart';
import '../navigation/routes/app_pages.dart';
import '../navigation/routes/app_routes.dart';
import '../services/localServices/get_storage_local_storage_service.dart';
import '../services/localServices/local_storage_service.dart';
import '../services/networkServices/dio_network_service.dart';
import '../services/networkServices/network_service.dart';

import '../../features/home/dependences/home_dependencies.dart';
import '../../features/home/navigation/private/home_pages.dart';

class AppDependency {
  static Future<void> init() async {

    // Initialize GetStorage
    await GetStorage.init();

    // initialize all pages
    final featuresPages = [
      HomePages(),
      //Add features pages here
    ];
    Get.lazyPut(() => AppPages(featuresPages), fenix: true);

    //initialize AppNavigation
    Get.lazyPut<AppNavigation>(
        () => GetXNavigationImpl(AppRoutes.notFoundPage), fenix: true);

    //initialize Views

    // Réseau
    Get.lazyPut<NetworkService>(() => DioNetworkService(), fenix: true);

    // Stockage local
    Get.lazyPut<LocalStorageService>(() => GetStorageService(), fenix: true);

    //Chargement des dependances de features
      HomeDependencies.init();
 }
}