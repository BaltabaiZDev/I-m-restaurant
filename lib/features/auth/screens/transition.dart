import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/transition_controller.dart';

class TransitionScreen extends StatelessWidget {
  final String name;

  const TransitionScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TransitionController(name));

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/7.png', // өзіңіздегі сурет жолы
              fit: BoxFit.cover,
            ),
          ),

          Obx(() {
            return AnimatedOpacity(
              opacity: controller.overlayOpacity.value,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: Container(color: Colors.black),
            );
          }),

          Obx(() {
            return AnimatedOpacity(
              opacity: controller.textOpacity.value,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              child: Center(
                child: Text(
                  'Welcome, ${controller.name}!',
                  style: const TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
