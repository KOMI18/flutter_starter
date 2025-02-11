import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_navigation.dart';

class GetXNavigationImpl implements AppNavigation {
  final String notFoundPage;
  GetXNavigationImpl(this.notFoundPage);

  @override
  Future<T?>? toNamed<T>(String routeName, {dynamic arguments}) {
    try {
      return Get.toNamed<T>(routeName, arguments: arguments);
    } catch (e) {
      return Get.toNamed<T>(notFoundPage, arguments: arguments);
    }
  }

  @override
  Future<T?>? to<T>(Widget page, {dynamic arguments}) {
    try {
      return Get.to<T>(page, arguments: arguments);
    } catch (e) {
      return Get.toNamed<T>(notFoundPage, arguments: arguments);
    }
  }

  @override
  Future<T?>? toNamedAndReplace<T>(String routeName, {dynamic arguments}) {
    try {
      return Get.offNamed<T>(routeName, arguments: arguments);
    } catch (e) {
      return Get.toNamed<T>(notFoundPage, arguments: arguments);
    }
  }

  @override
  Future<T?>? toNamedAndReplaceAll<T>(String routeName, {dynamic arguments}) {
    try {
      return Get.offAllNamed<T>(routeName, arguments: arguments);
    } catch (e) {
      return Get.toNamed<T>(notFoundPage, arguments: arguments);
    }
  }

  @override
  void goBack<T>({T? result}) {
    try {
      Get.back(result: T);
    } catch (e) {
      Get.toNamed(notFoundPage);
    }
  }
}
