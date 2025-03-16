import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/choice_buttons.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_styles.dart';
import '../../../auth/screens/auth.dart';
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
              Container(
                height: 400,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.linear,
                      bottom: 28,
                      // When the animation triggers, move off-screen to the right.
                      left: controller.showSecondImage.value ? screenWidth + 266 : screenWidth / 2 - 133,
                      child: SizedBox(width: 266, height: 150, child: Image.asset('assets/images/1.png', key: const ValueKey('first'), fit: BoxFit.contain)),
                    ),
                    // Second image (larger, enters from left).
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.linear,
                      bottom: 0,
                      // When the animation triggers, slide in to position at the bottom right.
                      left: controller.showSecondImage.value ? screenWidth / 2 - 185.5 : -371,
                      child: SizedBox(width: 371, height: 375, child: Image.asset('assets/images/2.png', key: const ValueKey('second'), fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              // Animated bottom column (texts and buttons)
              if (!controller.showStartButtons.value)
                Expanded(
                  child: AnimatedSlide(
                    offset: controller.showSecondImage.value ? const Offset(0, 0) : const Offset(0, 2),
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.linear,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Выбирайте язык", style: TTextStyles.h4.copyWith(color: TColors.typographyBlack)),
                            const SizedBox(height: 10),
                            Text("Совершайте заказы и получайте\nдополнительные бонусы", textAlign: TextAlign.center, style: TTextStyles.body1.copyWith(color: TColors.typography80)),
                            const SizedBox(height: 40),
                            ChoiceButtons(
                              language: "Қазақша",
                              onPressed: () {
                                controller.showStartButtons.value = true;
                              },
                              backgroundColor: const Color(0xFFF9BD36),
                            ),
                            const SizedBox(height: 20),
                            ChoiceButtons(
                              language: "Русский",
                              onPressed: () {
                                controller.showStartButtons.value = true;
                              },
                              backgroundColor: const Color(0xFFE52723),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              if (controller.showStartButtons.value)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Войдите в профиль", style: TTextStyles.h4.copyWith(color: TColors.typographyBlack)),
                        const SizedBox(height: 10),
                        Text("Совершайте заказы и получайте дополнительные бонусы", textAlign: TextAlign.center, style: TTextStyles.body1.copyWith(color: TColors.typography80)),
                        const SizedBox(height: 40),
                        ChoiceButtons(language: "Начать", onPressed: () => Get.to(() => const AuthScreen()), backgroundColor: const Color(0xFFF9BD36)),
                        const SizedBox(height: 20),
                        ChoiceButtons(language: "Регистрация", onPressed: () => Get.to(() => const AuthScreen()), backgroundColor: const Color(0xFFE52723)),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
