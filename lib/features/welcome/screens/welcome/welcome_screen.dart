import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/features/welcome/screens/welcome/widgets/welcome_animation.dart';
import 'package:i_am_restaurant/features/welcome/screens/welcome/widgets/welcome_button_animation.dart';
import 'package:i_am_restaurant/features/welcome/screens/welcome/widgets/welcome_item.dart';

import '../../controllers/welcome_controller.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WelcomeController());
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Obx(
          () => Column(
            children: [
              WelcomeAnimation(controller: controller, screenWidth: screenWidth),
              const SizedBox(height: 70),
              if (!controller.showStartButtons.value) WelcomeButtonAnimation(controller: controller),

              if (controller.showStartButtons.value) WelcomeItem(),
            ],
          ),
        ),
      ),
    );
  }
}
