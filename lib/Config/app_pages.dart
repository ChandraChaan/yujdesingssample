import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:yujdesingssample/Application/Binding/homepage_binding.dart';
import 'package:yujdesingssample/Presentation/adminAccounts.dart';
import 'package:yujdesingssample/Presentation/adminPage.dart';
import 'package:yujdesingssample/Presentation/adminViewComplaintes.dart';
import 'package:yujdesingssample/Presentation/customerViewComplaint.dart';
import 'package:yujdesingssample/Presentation/frontScreen.dart';
import 'package:yujdesingssample/Presentation/loginType.dart';
import 'package:yujdesingssample/Presentation/login_page.dart';
import 'package:yujdesingssample/Presentation/phoneNumber.dart';
import 'package:yujdesingssample/Presentation/signup.dart';
import 'package:yujdesingssample/Presentation/taskAsignPage.dart';
import 'package:yujdesingssample/Presentation/tecchnitainMainPage.dart';
import 'package:yujdesingssample/Presentation/technician.dart';
import 'package:yujdesingssample/Presentation/userPage.dart';

part 'app_route.dart';

class AppPages {
  static const INITIAL = Routes.frontPage;
  static final routes = [
    GetPage(
        name: Routes.login, page: () => loginPage(), binding: MainBinding()),
    GetPage(
        name: Routes.adminPage,
        page: () => AdminPage(),
        binding: MainBinding()),
    GetPage(
        name: Routes.taskpage,
        page: () => taskAsaignPage(),
        binding: MainBinding()),
    GetPage(
        name: Routes.technicianPage,
        page: () => TechnitianMainPage(),
        binding: MainBinding()),
    GetPage(
        name: Routes.userPage, page: () => UserPage(), binding: MainBinding()),
    GetPage(
      name: Routes.frontPage,
      page: () => FrontScreen(), /*binding: MainBinding()*/
    ),
    GetPage(
      name: Routes.loginTypePage,
      page: () => Logintype(), /*binding: MainBinding()*/
    ),
    GetPage(
        name: Routes.ViewComplaints,
        page: () => ViewComplaints(),
        binding: MainBinding()),
    GetPage(
        name: Routes.phoneNumber,
        page: () => EnterPhoneNumber(),
        binding: MainBinding()),
    GetPage(
        name: Routes.customerViewComplaint,
        page: () => CustomerViewComplaint(),
        binding: MainBinding()),
    GetPage(name: Routes.sighUp, page: () => SignUp(), binding: MainBinding()),
    GetPage(
        name: Routes.adminAccoutns,
        page: () => AdminAccoutns(),
        binding: MainBinding()),
  ];
}
