import 'package:flutter/material.dart';

import '../../../controllers/welcome_controller.dart';

class WelcomeAnimation extends StatelessWidget {
  const WelcomeAnimation({super.key, required this.controller, required this.screenWidth});

  final WelcomeController controller;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.linear,
            bottom: 28,
            left: controller.showSecondImage.value ? screenWidth + 266 : screenWidth / 2 - 133,
            child: SizedBox(
              width: 266,
              height: 150,
              child: Image.asset('assets/images/1.png', key: const ValueKey('first'), fit: BoxFit.contain),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 600),
            curve: Curves.linear,
            bottom: 0,
            left: controller.showSecondImage.value ? screenWidth / 2 - 185.5 : -371,
            child: SizedBox(
              width: 371,
              height: 375,
              child: Image.asset('assets/images/2.png', key: const ValueKey('second'), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
