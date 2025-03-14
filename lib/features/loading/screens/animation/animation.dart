import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/features/loading/controllers/animation_controller.dart';
import 'package:i_am_restaurant/utils/constants/image_strings.dart';
import 'package:lottie/lottie.dart';

class AnimationPage extends StatelessWidget {
  AnimationPage({super.key}) {
    Get.put(AnimationScreenController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Hero(tag: 'scooterHero', child: Lottie.asset(TImages.delivery))),
    );
  }
}
