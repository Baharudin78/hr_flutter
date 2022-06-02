import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hr_flutter/app/controllers/page_index_controller.dart';
import 'package:hr_flutter/routes/app_pages.dart';

void main() {
  final pageController = Get.put(PageIndexController(), permanent: true);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
