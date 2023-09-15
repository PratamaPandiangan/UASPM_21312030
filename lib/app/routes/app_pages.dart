import 'package:get/get.dart';
import 'package:uas_21312030/app/modules/login/bindings/login_binding.dart';
import 'package:uas_21312030/app/modules/login/views/login_view.dart';
import 'package:uas_21312030/app/modules/reset_password/bindings/reset_password_binding.dart';
import 'package:uas_21312030/app/modules/reset_password/views/reset_password_view.dart';
import 'package:uas_21312030/app/modules/singup/bindings/singup_binding.dart';
import 'package:uas_21312030/app/modules/singup/views/singup_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
  ];
}
