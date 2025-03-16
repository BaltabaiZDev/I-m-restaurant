import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/otp_controller.dart';
import 'otp_item.dart';

class BuildSMS extends StatelessWidget {
  const BuildSMS({super.key, required this.controller, required this.title});

  final OtpController controller;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: controller.onBackPressed,
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: 24),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 40),

        // 4 OTP ұяшығы
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OtpItem(
              controller: controller,
              textController: controller.digit1,
              currentFocus: controller.fn1,
              previousFocus: null,
              nextFocus: controller.fn2,
            ),
            OtpItem(
              controller: controller,
              textController: controller.digit2,
              currentFocus: controller.fn2,
              previousFocus: controller.fn1,
              nextFocus: controller.fn3,
            ),
            OtpItem(
              controller: controller,
              textController: controller.digit3,
              currentFocus: controller.fn3,
              previousFocus: controller.fn2,
              nextFocus: controller.fn4,
            ),
            OtpItem(
              controller: controller,
              textController: controller.digit4,
              currentFocus: controller.fn4,
              previousFocus: controller.fn3,
              nextFocus: null,
            ),
          ],
        ),
        const SizedBox(height: 25),

        // "Resend Code" тек барлық ұяшық толмаған кезде ғана көрсетеміз
        Obx(
          () =>
              controller.isCodeComplete.value
                  ? const Text("")
                  : GestureDetector(
                    onTap: controller.resendCode,
                    child: const Text("Resend Code", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                  ),
        ),
        const SizedBox(height: 200),

        // Батырма
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SizedBox(
            height: 57,
            width: double.infinity,
            child: Obx(
              () => ElevatedButton(
                onPressed: controller.onSubmitCode,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      controller.isCodeComplete.value
                          ? const Color(0xffE52723) // Егер 4 сан толса -> қызыл
                          : const Color(0xffFDE1A1), // Әйтпесе -> сарғыш
                  foregroundColor: controller.isCodeComplete.value ? Colors.white : Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: Text(
                  controller.isCodeComplete.value ? "Проверить" : "Далее",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
