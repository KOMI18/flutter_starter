import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../ui/widgets/loading_widget.dart';
import 'app_colors.dart';

extension Utils on GetInterface {
  showLoader(
      {bool dismissible = false, bool canUserPop = false, bool dense = false}) {
    this.dialog(
        WillPopScope(
            onWillPop: () async {
              return canUserPop;
            },
            child: LoaderWidget(dense: dense)),
        barrierDismissible: dismissible);
  }

  closeLoader() {
    if (isSnackbarOpen) {
      Get.back();
    }
    if (isDialogOpen!) {
      Get.back();
    }
  }

  showCustomSnackBar(String message,
      {String title = "Erreur", bool isError = true, Color? color}) {
    return Get.showSnackbar(GetSnackBar(
      snackPosition: SnackPosition.TOP,
      backgroundColor: color ??
          (isError
              ? Colors.red.withOpacity(.8)
              : AppColors.primary),
      title: title,
      message: message,
      duration: Duration(seconds: 2),
    ));
  }
}