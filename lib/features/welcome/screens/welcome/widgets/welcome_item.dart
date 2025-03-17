import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/choice_buttons.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_styles.dart';
import '../../../../auth/screens/auth.dart';

class WelcomeItem extends StatelessWidget {
  const WelcomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Войдите в профиль", style: TTextStyles.h4.copyWith(color: TColors.typographyBlack)),
            const SizedBox(height: 10),
            Text(
              "Совершайте заказы и получайте дополнительные бонусы",
              textAlign: TextAlign.center,
              style: TTextStyles.body1.copyWith(color: TColors.typography80),
            ),
            const SizedBox(height: 40),
            ChoiceButtons(
              language: "Начать",
              onPressed: () => Get.to(() => const AuthScreen()),
              backgroundColor: const Color(0xFFF9BD36),
            ),
            const SizedBox(height: 20),
            ChoiceButtons(
              language: "Регистрация",
              onPressed: () => Get.to(() => const AuthScreen()),
              backgroundColor: const Color(0xFFE52723),
            ),
          ],
        ),
      ),
    );
  }
}
