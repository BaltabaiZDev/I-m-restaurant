import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileHead extends StatelessWidget {
  final String? title;

  const ProfileHead({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          left: 0,
          child: IconButton(
            highlightColor: Colors.transparent,
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios, size: 30),
            color: Colors.black,
          ),
        ),
        Center(child: Text(title ?? "Оплата", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600))),
        Positioned(right: 0, child: SizedBox(width: 30)),
      ],
    );
  }
}
