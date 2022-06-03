import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:hr_flutter/app/controllers/page_index_controller.dart';
import 'package:hr_flutter/constants/assets_path.dart';
import 'package:hr_flutter/constants/colors.dart';

import '../controllers/kategori_controller.dart';

class KategoriView extends GetView<KategoriController> {
  final pageController = Get.find<PageIndexController>();

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Kategori'),
          centerTitle: true,
          backgroundColor: Palette.greenSoldig,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10.h,
                  width: 20.w,
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(logoCuti),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text("Cuti"),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 10.h,
                  width: 20.w,
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(logoIzin),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text("Izin"),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 10.h,
                  width: 20.w,
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(logoImburse),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text("Imburse"),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 10.h,
                  width: 20.w,
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(logoLembur),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text("Lembur"),
              ],
            ),
          ],
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
      );
    });
  }
}
