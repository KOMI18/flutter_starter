import '../../../features/home/navigation/home_public_routes.dart';
import '../../../features/error/navigation/error_public_routes.dart';
  
  
import '../../utils/app_constants.dart';

class AppRoutes {
  static String get initialRoute => splash;
  
  static const splash = AppConstants.splashScreen;
  static const notFoundPage = AppConstants.notFoundScreen;
  //Home Public Routes
  static const home = HomePublicRoutes.home;
  static const dashboard = HomePublicRoutes.dashboard;

  //Error Public Routes
  static const error = ErrorPublicRoutes.home;
}