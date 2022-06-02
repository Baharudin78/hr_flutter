import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hr_flutter/app/controllers/page_index_controller.dart';
import 'package:hr_flutter/constants/colors.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final pageController = Get.find<PageIndexController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfileView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Kategori"),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), label: "Jadwal"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: pageController.pageIndex.value,
        showSelectedLabels: false,
        selectedItemColor: Palette.greenSoldig,
        unselectedItemColor: Colors.grey,
        onTap: (int i) => pageController.changePage(i),
      ),
    );
  }
}
