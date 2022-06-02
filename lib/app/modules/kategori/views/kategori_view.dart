import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hr_flutter/app/controllers/page_index_controller.dart';
import 'package:hr_flutter/constants/colors.dart';

import '../controllers/kategori_controller.dart';

class KategoriView extends GetView<KategoriController> {
  final pageController = Get.find<PageIndexController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KategoriView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'KategoriView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Kategori"),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), label: "Jadwal"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
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
