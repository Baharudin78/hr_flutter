import 'package:get/get.dart';

import '../app/modules/getstarted/bindings/getstarted_binding.dart';
import '../app/modules/getstarted/views/getstarted_view.dart';
import '../app/modules/home/bindings/home_binding.dart';
import '../app/modules/home/views/home_view.dart';
import '../app/modules/kategori/bindings/kategori_binding.dart';
import '../app/modules/kategori/views/kategori_view.dart';
import '../app/modules/login/bindings/login_binding.dart';
import '../app/modules/login/views/login_view.dart';
import '../app/modules/profile/bindings/profile_binding.dart';
import '../app/modules/profile/views/profile_view.dart';
import '../app/modules/schedule/bindings/schedule_binding.dart';
import '../app/modules/schedule/views/schedule_view.dart';
import '../app/modules/splachscreen/bindings/splachscreen_binding.dart';
import '../app/modules/splachscreen/views/splachscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

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
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.KATEGORI,
      page: () => KategoriView(),
      binding: KategoriBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.SCHEDULE,
      page: () => ScheduleView(),
      binding: ScheduleBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
