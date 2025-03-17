import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/popular_item_controller.dart';

class SecondBuildItem extends StatelessWidget {
  final String image;
  final int index;

  SecondBuildItem({super.key, required this.image, required this.index});

  final controller = Get.find<PopularItemController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        controller.onItemTapped(index);
      },
      onTapUp: (details) {
        controller.onItemTapCancel();
      },
      onTapCancel: () {
        controller.onItemTapCancel();
      },
      child: Obx(
        () => AnimatedScale(
          scale: controller.isSelected(index) ? 0.9 : 1.0,
          duration: const Duration(milliseconds: 150),
          child: Container(
            width: 120,
            height: 180,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset(image, fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
