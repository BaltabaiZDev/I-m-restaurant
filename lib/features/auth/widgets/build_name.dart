import 'package:flutter/material.dart';

import '../controllers/otp_controller.dart';

class BuildName extends StatelessWidget {
  const BuildName({super.key, required this.controller});

  final OtpController controller;

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
        const Text(
          "Как вас зовут?",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 40),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Container(
            height: 57,
            decoration: BoxDecoration(color: Color(0xffFDE1A1), borderRadius: BorderRadius.circular(12)),

            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: TextField(
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              textAlign: TextAlign.center,
              controller: controller.nameController,
              decoration: const InputDecoration(border: InputBorder.none, hintText: "Введите ваше имя"),
            ),
          ),
        ),
        const SizedBox(height: 250),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SizedBox(
            height: 57,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: controller.onCheckName,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffE52723),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text("Проверить", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }
}
