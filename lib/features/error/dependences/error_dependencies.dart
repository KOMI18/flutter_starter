import 'package:get/get.dart';

import '../domain/repositories/error_repository.dart';
import '../infrastructure/repositoriesImpl/error_repository_impl.dart';

class ErrorDependencies {
  static void init() {
    Get.lazyPut<ErrorRepository>(() => ErrorRepositoryImpl(
        networkService: Get.find()), fenix: true);
  }
}


