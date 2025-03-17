import 'package:flutter/material.dart';

import '../../../../../common/widgets/choice_buttons.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_styles.dart';
import '../../../controllers/welcome_controller.dart';

class WelcomeButtonAnimation extends StatelessWidget {
  const WelcomeButtonAnimation({super.key, required this.controller});

  final WelcomeController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                Text(
                  "Совершайте заказы и получайте\nдополнительные бонусы",
                  textAlign: TextAlign.center,
                  style: TTextStyles.body1.copyWith(color: TColors.typography80),
                ),
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
    );
  }
}
