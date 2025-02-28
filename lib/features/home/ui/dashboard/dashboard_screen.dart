import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/core/ui/interfaces/feature_widget_interface.dart';
import 'package:flutter_starter/core/ui/widgets/loading_widget.dart';
import 'package:flutter_starter/core/utils/app_colors.dart';
import 'package:flutter_starter/features/error/ui/commingSoon/comming_soon_screen.dart';
import 'package:flutter_starter/features/home/ui/home/home_screen.dart';
import 'controllers/dashboard_controller.dart';
import 'package:get/get.dart';



class DashboardScreen extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.primaryColor,
      body: Obx(() => controller.loading.value
          ? CircularProgressIndicator(color: AppColors.black,)
          : IndexedStack(
        index: controller.selectedIndex.value,
        children: [
          HomeScreen(),
          CommingSoonScreen(),
          CommingSoonScreen(),
          CommingSoonScreen(),

          // ProfileScreen(),
        ],
      )),
      bottomNavigationBar: Obx(() => controller.loading.value
          ? const SizedBox()
          : BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        iconSize: 25,
        unselectedItemColor: const Color(0xFF111111),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              controller.selectedIndex.value == 0
                  ? FluentIcons.home_24_filled
                  : FluentIcons.home_24_regular,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              controller.selectedIndex.value == 1
                  ? FluentIcons.add_square_multiple_20_filled
                  : FluentIcons.add_square_multiple_20_filled,
            ),
            label: 'LABEL1',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              controller.selectedIndex.value == 2
                  ? FluentIcons.add_square_multiple_20_filled
                  : FluentIcons.add_square_multiple_20_filled,
            ),
            label: 'LABEL2',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              controller.selectedIndex.value == 3
                  ? FluentIcons.person_12_filled
                  : FluentIcons.person_12_filled,
            ),
            label: 'Profile',
          ),

        ],
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: Get.theme.primaryColor,
        onTap: controller.onItemTapped,
      )),
    );
  }
}
