import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:yujdesingssample/Application/Binding/homepage_binding.dart';
import 'package:yujdesingssample/Presentation/login/loginScreenView.dart';
import 'package:yujdesingssample/Presentation/splashScreen/splashScreen.dart';

part 'app_route.dart';

class AppPages {
  static const INITIAL = Routes.splash;
  static final routes = [
    GetPage(
        name: Routes.splash,
        page: () => splashScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.login,
        page: () => loginScreen(),
        binding: MainBinding()),
  ];
}
