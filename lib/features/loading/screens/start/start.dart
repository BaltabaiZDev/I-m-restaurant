import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/common/widgets/choice_buttons.dart';
import 'package:i_am_restaurant/features/home/screens/home/home.dart';
import 'package:i_am_restaurant/features/loading/controllers/start_page_controller.dart';
import 'package:i_am_restaurant/navigation_menu.dart';
import 'package:i_am_restaurant/utils/constants/colors.dart';
import 'package:i_am_restaurant/utils/constants/image_strings.dart';
import 'package:i_am_restaurant/utils/constants/text_styles.dart';
import 'package:lottie/lottie.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  Widget _flightShuttleBuilder(
    BuildContext flightContext,
    Animation<double> animation,
    HeroFlightDirection flightDirection,
    BuildContext fromHeroContext,
    BuildContext toHeroContext,
  ) {
    return fromHeroContext.widget;
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StartPageController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Hero(
              tag: 'scooterHero',
              flightShuttleBuilder: _flightShuttleBuilder,
              child: Lottie.asset(TImages.delivery),
            ),
            const SizedBox(height: 70),
            Expanded(
              child: Obx(
                () => AnimatedOpacity(
                  opacity: controller.opacity.value,
                  duration: const Duration(milliseconds: 800),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Войдите в профиль", style: TTextStyles.h4.copyWith(color: TColors.typographyBlack)),
                        const SizedBox(height: 10),
                        Text(
                          "Совершайте заказы и получайте\nдополнительные бонусы",
                          textAlign: TextAlign.center,
                          style: TTextStyles.body1.copyWith(color: TColors.typography80),
                        ),
                        const SizedBox(height: 50),
                        ChoiceButtons(
                          language: "Начать",
                          onPressed: () => Get.offAll(() => NavigationMenu()),
                          backgroundColor: const Color(0xFFF9BD36),
                        ),
                        const SizedBox(height: 20),
                        ChoiceButtons(
                          language: "Регистрация",
                          onPressed: () {},
                          backgroundColor: const Color(0xFFE52723),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
