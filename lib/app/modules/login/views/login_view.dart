import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:hr_flutter/constants/colors.dart';
import 'package:hr_flutter/constants/assets_path.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final styleOne = TextStyle(fontSize: 15);
  final styleTwo = TextStyle(fontWeight: FontWeight.bold, fontSize: 25);
  final styleThree = TextStyle(fontWeight: FontWeight.bold, fontSize: 15);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Palette.greenSoldig,
            body: ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      width: 100.w,
                      height: 50.h,
                      child: Image(
                        image: AssetImage(logoLogin),
                      ),
                    ),
                    Container(
                      width: 100.w,
                      height: 41.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Selamat Datang",
                              style:
                                  GoogleFonts.montserrat(textStyle: styleOne),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Silahkan Masuk",
                              style:
                                  GoogleFonts.montserrat(textStyle: styleTwo),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Email",
                              style:
                                  GoogleFonts.montserrat(textStyle: styleThree),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  fillColor: Color(0xffEBEBEB),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  hintText: 'Masukkan Emailmu'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Password",
                              style:
                                  GoogleFonts.montserrat(textStyle: styleThree),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  fillColor: Color(0xffEBEBEB),
                                  hintText: 'Masukkan Passwordmu'),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Palette.greenSoldig,
                                  minimumSize: const Size.fromHeight(50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              child: Text(
                                ' Masuk ',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
