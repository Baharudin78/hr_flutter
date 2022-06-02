import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hr_flutter/constants/colors.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Palette.greenSoldig, body: Stack()),
    );
  }
}
