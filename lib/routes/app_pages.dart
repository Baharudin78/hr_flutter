import 'package:get/get.dart';

import '../app/modules/getstarted/bindings/getstarted_binding.dart';
import '../app/modules/getstarted/views/getstarted_view.dart';
import '../app/modules/login/bindings/login_binding.dart';
import '../app/modules/login/views/login_view.dart';
import '../app/modules/splachscreen/bindings/splachscreen_binding.dart';
import '../app/modules/splachscreen/views/splachscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplachscreenView(),
      binding: SplachscreenBinding(),
    ),
    GetPage(
      name: _Paths.GETSTARTED,
      page: () => GetstartedView(),
      binding: GetstartedBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
