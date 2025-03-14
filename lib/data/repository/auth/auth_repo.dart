import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import '../../../features/home/screens/home/home.dart';
import '../../../features/welcome/screens/welcome/welcome_screen.dart';

class AuthRepo extends GetxController {
  static AuthRepo get instance => Get.find();

  @override
  void onReady() {
    super.onReady();
    FlutterNativeSplash.remove();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      screenRedirect();
    });
  }

  void screenRedirect() {
    final user = null;

    if (user == null) {
      Get.offAll(() => WelcomeScreen());
    } else {
      Get.offAll(() => HomeScreen());
    }
  }
}
