import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hr_flutter/constants/assets_path.dart';
import 'package:hr_flutter/constants/colors.dart';
import 'package:sizer/sizer.dart';

import '../controllers/detail_jadwal_controller.dart';

class DetailJadwalView extends GetView<DetailJadwalController> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
            backgroundColor: Palette.greyBackground,
            appBar: AppBar(
              title: Text('DetailJadwalView'),
              centerTitle: true,
              leading: GestureDetector(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
              backgroundColor: Colors.white,
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    width: 100.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                )
              ],
            ));
      },
    );
  }
}
