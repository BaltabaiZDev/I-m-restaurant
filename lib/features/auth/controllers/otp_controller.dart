import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/transition.dart';

class OtpController extends GetxController {
  final digit1 = TextEditingController();
  final digit2 = TextEditingController();
  final digit3 = TextEditingController();
  final digit4 = TextEditingController();

  final fn1 = FocusNode();
  final fn2 = FocusNode();
  final fn3 = FocusNode();
  final fn4 = FocusNode();

  var isCodeComplete = false.obs;

  var isCodeVerified = false.obs;

  final nameController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fn1.requestFocus();
    });
  }

  @override
  void onClose() {
    digit1.dispose();
    digit2.dispose();
    digit3.dispose();
    digit4.dispose();
    fn1.dispose();
    fn2.dispose();
    fn3.dispose();
    fn4.dispose();
    nameController.dispose();
    super.onClose();
  }

  void onDigitChanged(
    TextEditingController textController,
    FocusNode currentFocus,
    FocusNode? previousFocus,
    FocusNode? nextFocus,
    String value,
  ) {
    if (value.length == 1) {
      if (nextFocus != null) {
        nextFocus.requestFocus();
      }
    } else if (value.isEmpty) {
      if (previousFocus != null) {
        previousFocus.requestFocus();
      }
    }
    _checkCodeComplete();
  }

  void _checkCodeComplete() {
    isCodeComplete.value =
        digit1.text.isNotEmpty && digit2.text.isNotEmpty && digit3.text.isNotEmpty && digit4.text.isNotEmpty;
  }

  void onSubmitCode() {
    final code = digit1.text + digit2.text + digit3.text + digit4.text;
    if (code.length == 4) {
      isCodeVerified.value = true;
    } else {
      Get.snackbar('Қате', '4 цифр енгізіңіз');
    }
  }

  void resendCode() {
    Get.snackbar('SMS', 'Код қайта жіберілді');
  }

  void onCheckName() {
    final name = nameController.text.trim();
    if (name.isNotEmpty) {
      Get.to(() => TransitionScreen(name: name));
    } else {
      Get.snackbar("Ескерту", "Атыңызды енгізіңіз");
    }
  }

  void onBackPressed() {
    if (isCodeVerified.value) {
      isCodeVerified.value = false;
      digit1.clear();
      digit2.clear();
      digit3.clear();
      digit4.clear();
      _checkCodeComplete();
      fn1.requestFocus();
    } else {
      Get.back();
    }
  }
}
