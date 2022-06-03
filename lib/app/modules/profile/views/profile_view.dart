import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr_flutter/constants/assets_path.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_flutter/app/controllers/page_index_controller.dart';
import 'package:hr_flutter/constants/colors.dart';
import 'package:sizer/sizer.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final pageController = Get.find<PageIndexController>();
  final styleOne =
      TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold);
  final styleTwo = TextStyle(fontSize: 20, color: Colors.white);
  final styleThree = TextStyle(color: Colors.white);
  final styleFour = TextStyle(fontSize: 20);
  final styleFive = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: Palette.greenSoldig);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: Color(0xffF6F6F6),
          body: Stack(
            children: [
              Container(
                height: 48.h,
                width: 100.w,
                decoration: BoxDecoration(color: Palette.greenSoldig),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 17.h,
                  ),
                  Text(
                    "Profile",
                    style: GoogleFonts.montserrat(textStyle: styleOne),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Image(width: 90, height: 90, image: AssetImage(logoAvatar)),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Baharudin",
                    style: GoogleFonts.montserrat(textStyle: styleTwo),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Android Developer",
                        style: GoogleFonts.montserrat(textStyle: styleThree),
                      ),
                      VerticalDivider(
                        width: 10,
                        endIndent: 20,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Text(
                        "14 Juni 2000",
                        style: GoogleFonts.montserrat(textStyle: styleThree),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Center(
                  child: Container(
                    width: 100.w,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sisa Cuti",
                            style: GoogleFonts.montserrat(textStyle: styleFour),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "90",
                                style: GoogleFonts.montserrat(
                                    textStyle: styleFive),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Hari",
                                style: GoogleFonts.montserrat(
                                    textStyle: styleFive),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Version 1.2"),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Palette.redSoldig,
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text(
                        ' Keluar ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
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
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
            currentIndex: pageController.pageIndex.value,
            showSelectedLabels: false,
            selectedItemColor: Palette.greenSoldig,
            unselectedItemColor: Colors.grey,
            onTap: (int i) => pageController.changePage(i),
          ),
        );
      },
    );
  }
}
