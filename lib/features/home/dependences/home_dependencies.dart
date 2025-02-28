import 'package:flutter_starter/features/home/ui/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../domain/repositories/home_repository.dart';
import '../infrastructure/repositoriesImpl/home_repository_impl.dart';

class HomeDependencies {
  static void init() {
    Get.lazyPut<HomeRepository>(() => HomeRepositoryImpl(
        networkService: Get.find()), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }

}
