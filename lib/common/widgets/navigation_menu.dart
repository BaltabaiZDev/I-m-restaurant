import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

import '../controller/navigation_controller.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),

      bottomNavigationBar: Obx(() {
        return Container(
          decoration: BoxDecoration(
            color: TColors.secondary,

            boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 5)],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: NavigationBar(
              height: 70,
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) => controller.changeIndex(index),

              destinations: [
                NavigationDestination(
                  icon: const Icon(Iconsax.home_25, size: 30, color: Colors.white),
                  selectedIcon: Icon(Iconsax.home_25, size: 30, color: Colors.red.shade400),
                  label: '',
                ),
                NavigationDestination(
                  icon: const Icon(Iconsax.menu_board5, size: 30, color: Colors.white),
                  selectedIcon: Icon(Iconsax.menu_board5, size: 30, color: Colors.red.shade400),
                  label: '',
                ),
                NavigationDestination(
                  icon: const Icon(Iconsax.location5, size: 30, color: Colors.white),
                  selectedIcon: Icon(Iconsax.location5, size: 30, color: Colors.red.shade400),
                  label: '',
                ),
                NavigationDestination(
                  icon: const Icon(Iconsax.heart5, size: 30, color: Colors.white),
                  selectedIcon: Icon(Iconsax.heart5, size: 30, color: Colors.red.shade400),
                  label: '',
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
