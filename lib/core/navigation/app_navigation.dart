import 'package:flutter/material.dart';

abstract class AppNavigation {
  Future<T?>? toNamed<T>(String routeName, {dynamic arguments});
  Future<T?>? to<T>(Widget page, {dynamic arguments});
  Future<T?>? toNamedAndReplace<T>(String routeName, {dynamic arguments});
  Future<T?>? toNamedAndReplaceAll<T>(String routeName, {dynamic arguments});
  void goBack<T>({T? result});
}