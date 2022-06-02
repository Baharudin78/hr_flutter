import 'package:get/get.dart';

class PageIndexController extends GetxController {
  //TODO: Implement PageIndexController
  RxInt pageIndex = 0.obs;
  void changePage(int i) async {
    print('click index=$i');
  }
}
