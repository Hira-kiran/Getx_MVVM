import 'package:get/get.dart';
import 'package:getxmvvm/res/routes/routes_name.dart';
import 'package:getxmvvm/view/splash_Screen.dart';

class AppRoutes {
  static approutes() => GetPage(
      name: RoutesName.splashScreen,
      page: () => const SplashScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(seconds: 3));
}
