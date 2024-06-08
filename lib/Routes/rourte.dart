import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:proflutter1/Logic/Binding/ForgetPasswrd_Binding.dart';
import 'package:proflutter1/Logic/Binding/HomeBinding.dart';
import 'package:proflutter1/Logic/Binding/LoginBinding.dart';
import 'package:proflutter1/Logic/Binding/RegesterBinding.dart';
import 'package:proflutter1/Logic/Binding/SplashBinding.dart';
import 'package:proflutter1/Logic/Binding/VerifictionBinding.dart';
import 'package:proflutter1/view/ForgetPassword.dart';
import 'package:proflutter1/view/LoginView.dart';
import 'package:proflutter1/view/RegesterView.dart';
import 'package:proflutter1/view/Home.dart';
import 'package:proflutter1/view/SplashScreen.dart';
import 'package:proflutter1/view/VerificationCode.dart';


class AppPages {
  static final routes = [
    GetPage(
        name: Routes.HomePage,
        page: () => Home(),
        binding: HomeBinding()
    ),

    GetPage(
        name: Routes.Regester,
        page: () => RegesterView(),
        binding: RegisterBinding()
    ),


    GetPage(
        name: Routes.Login,
        page: () => LoginView(),
        binding: LoginBinding()
    ),
 GetPage(
        name: Routes.Verification,
        page: () => VerificationCode(),
        binding: VerificationBinding()
    ),

    GetPage(
      name: Routes.Splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: Routes.ForgetPassword,
      page: () => ForgetPassword(),
      binding: ForgetPasswrd_Binding(),

    ),

  ];


}

class Routes {
  static const HomePage = '/HomePage';
  static const Regester = '/regester';
  static const Splash = '/splash';
  static const Login = '/login';
  static const Verification = '/Verification';
  static const ForgetPassword = '/ForgetPassword';



}