import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hr_flutter/app/controllers/page_index_controller.dart';
import 'package:hr_flutter/constants/colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final pageController = Get.find<PageIndexController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'HomeView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Kategori"),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), label: "Jadwal"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          ],
          currentIndex: pageController.pageIndex.value,
          showSelectedLabels: false,
          selectedItemColor: Palette.greenSoldig,
          unselectedItemColor: Colors.grey,
          onTap: (int i) => pageController.changePage(i),
        ),
      ),
    );
  }
}
