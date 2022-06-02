import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:hr_flutter/constants/assets_path.dart';

import '../controllers/splachscreen_controller.dart';

class SplachscreenView extends GetView<SplachscreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff07736F),
        body: Center(
          child: Container(
            height: 104,
            width: 215,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: SvgPicture.asset(iconSoldig),
            ),
          ),
        ),
      ),
    );
  }
}
