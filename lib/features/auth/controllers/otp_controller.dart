import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/transition.dart';

class OtpController extends GetxController {
  // 4 TextEditingController
  final digit1 = TextEditingController();
  final digit2 = TextEditingController();
  final digit3 = TextEditingController();
  final digit4 = TextEditingController();

  // 4 FocusNode
  final fn1 = FocusNode();
  final fn2 = FocusNode();
  final fn3 = FocusNode();
  final fn4 = FocusNode();

  // Егер барлық ұяшық толса, true болады
  var isCodeComplete = false.obs;

  // Код дұрыс енгізілгеннен кейін true болатын RxBool
  var isCodeVerified = false.obs;

  // Аты-жөн енгізуге арналған контроллер
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

  /// Әрбір OTP ұяшығына сан енгізілгенде немесе жойылғанда шақырылады
  void onDigitChanged(
      TextEditingController textController,
      FocusNode currentFocus,
      FocusNode? previousFocus,
      FocusNode? nextFocus,
      String value,
      ) {
    // 1 символ енгізілсе -> келесі фокус
    if (value.length == 1) {
      if (nextFocus != null) {
        nextFocus.requestFocus();
      }
    }
    // Символ өшірілсе -> алдыңғы фокус
    else if (value.isEmpty) {
      if (previousFocus != null) {
        previousFocus.requestFocus();
      }
    }
    _checkCodeComplete();
  }

  /// 4 ұяшық толы ма тексереді
  void _checkCodeComplete() {
    isCodeComplete.value = digit1.text.isNotEmpty &&
        digit2.text.isNotEmpty &&
        digit3.text.isNotEmpty &&
        digit4.text.isNotEmpty;
  }

  /// "Проверить"/"Далее" батырмасы басылғанда
  void onSubmitCode() {
    final code = digit1.text + digit2.text + digit3.text + digit4.text;
    if (code.length == 4) {
      // Мұнда код тексеру логикасы
      // Егер код дұрыс болса, аты-жөн формасын көрсетеміз
      isCodeVerified.value = true;
    } else {
      Get.snackbar('Қате', '4 цифр енгізіңіз');
    }
  }

  /// "Resend Code" басылғанда
  void resendCode() {
    Get.snackbar('SMS', 'Код қайта жіберілді');
  }
  void onCheckName() {
    final name = nameController.text.trim();
    if (name.isNotEmpty) {
      // WelcomeTransitionScreen-ге өтеміз
      Get.to(() => TransitionScreen(name: name));
    } else {
      Get.snackbar("Ескерту", "Атыңызды енгізіңіз");
    }
  }


  /// Артқа қайту батырмасы
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
      // Алдындағы экранға оралу
      Get.back();
    }
  }
}
