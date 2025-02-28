import 'package:get/get.dart';

import '../bindings/dashboard_controller_binding.dart';
import '../../ui/dashboard/dashboard_screen.dart';

import '../bindings/onboarding_controller_binding.dart';
import '../../ui/onboarding/onboarding_screen.dart';
import '../../../../core/navigation/routes/features_pages.dart';
import '../../ui/home/home_screen.dart';
import '../bindings/home_controller_binding.dart';
import 'home_private_routes.dart';

class HomePages implements FeaturePages {
  @override
  List<GetPage>  getPages() => [
    GetPage(
      name: HomePrivateRoutes.home,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: HomePrivateRoutes.onboarding,
      page: () => OnboardingScreen(),
      binding: OnboardingControllerBinding(),
    ),
    GetPage(
      name: HomePrivateRoutes.dashboard,
      page: () => DashboardScreen(),
      binding: DashboardControllerBinding(),
    ),
    // Add other routes here
  ];
}