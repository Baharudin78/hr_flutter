import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr_flutter/constants/assets_path.dart';
import 'package:hr_flutter/constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
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
