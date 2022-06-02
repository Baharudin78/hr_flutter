import 'package:get/get.dart';
import 'package:hr_flutter/routes/app_pages.dart';

class PageIndexController extends GetxController {
  //TODO: Implement PageIndexController
  RxInt pageIndex = 0.obs;
  void changePage(int i) async {
    pageIndex.value = i;
    switch (i) {
      case 1:
        Get.offAllNamed(Routes.KATEGORI);
        break;
      case 2:
        Get.offAllNamed(Routes.SCHEDULE);
        break;
      case 3:
        Get.offAllNamed(Routes.PROFILE);
        break;
      default:
        Get.offAllNamed(Routes.HOME);
    }
  }
}
