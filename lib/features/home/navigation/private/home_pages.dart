import 'package:get/get.dart';
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
    // Add other routes here
  ];
}