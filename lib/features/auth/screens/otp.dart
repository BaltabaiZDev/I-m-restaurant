import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/otp_controller.dart';
import '../widgets/build_name.dart';
import '../widgets/build_sms.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OtpController());

    return Scaffold(
      backgroundColor: const Color(0xffFCB614),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 40.0, bottom: 20.0),
            child: Obx(() {
              if (!controller.isCodeVerified.value) {
                return BuildSMS(controller: controller, title: "Введите код из СМС");
              } else {
                return BuildName(controller: controller);
              }
            }),
          ),
        ),
      ),
    );
  }
}
