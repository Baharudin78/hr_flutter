import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr_flutter/constants/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_flutter/constants/assets_path.dart';
import '../controllers/getstarted_controller.dart';

class GetstartedView extends GetView<GetstartedController> {
  final styleOne = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xffebb38c));
  final styleTwo = TextStyle(fontSize: 19, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Palette.greenSoldig,
            body: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 100.h,
                  width: 100.w,
                ),
                Container(
                  width: 100.w,
                  child: SvgPicture.asset(
                    iconIntro,
                    width: 100.w,
                  ),
                ),
                Positioned(
                  top: 30.h,
                  left: 7.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Solusi HR",
                        style: GoogleFonts.montserrat(textStyle: styleOne),
                      ),
                      Text(
                        "Bagaimana Kabarmu? Apakah menyenangkan? Ayo Masuk Aplikasi",
                        style: GoogleFonts.montserrat(textStyle: styleTwo),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                    height: 10.h,
                    width: 40.w,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.only(
                              topLeft: Radius.circular(10.w)),
                        ),
                      ),
                      child: Text(
                        ' Lets Started',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
