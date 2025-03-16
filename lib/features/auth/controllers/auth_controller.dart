import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();

  final showStartButtons = false.obs;
  final isPhoneComplete = false.obs;

  late FocusNode phoneFocusNode;

  @override
  void onInit() {
    super.onInit();
    phoneFocusNode = FocusNode();

    phoneFocusNode.addListener(() {
      if (phoneFocusNode.hasFocus) {
        showStartButtons.value = true;
      } else {
        showStartButtons.value = false;
      }
    });
  }

  @override
  void onClose() {
    phoneFocusNode.dispose();
    super.onClose();
  }
}
