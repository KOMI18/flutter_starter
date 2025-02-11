import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? titleSize;
  final bool canBack;
  const CustomAppBar(
      {super.key, required this.title, this.canBack = true, this.titleSize});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: canBack
          ? IconButton(
              icon: const Icon(Icons.arrow_back, color: AppColors.black),
              onPressed: () {
                Get.back();
              },
            )
          : const SizedBox(),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: AppColors.black, fontSize: titleSize),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(Get.width,80);
}