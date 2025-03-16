import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/features/home/screens/delivery/delivery.dart';
import 'package:i_am_restaurant/features/home/screens/favorite/favorite.dart';
import 'package:i_am_restaurant/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
import 'features/home/screens/food_menu/food_menu.dart';
import 'features/home/screens/home/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // Контроллерді жалғаймыз
    final controller = Get.put(NavigationController());

    return Scaffold(
      // Негізгі дене – контроллердегі screens тізімінен таңдалғаны
      body: Obx(() => controller.screens[controller.selectedIndex.value]),

      // Төменгі навигация мәзірі
      bottomNavigationBar: Obx(
            () {
          return Container(
            // NavigationBar-ды дөңгелектеу үшін Container-ге дөңгелек шеттер береміз
            decoration: BoxDecoration(
              color: TColors.secondary, // Сары түс

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 5,
                ),
              ],
            ),
            // NavigationBar-ды біршама төмен орналастыру үшін Padding қолдануға болады
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: NavigationBar(
                height: 70,
                backgroundColor: Colors.transparent, // Артқы түсін контейнер береді
                surfaceTintColor: Colors.transparent, // Material 3 әсерін өшіру
                indicatorColor: Colors.transparent,    // Таңдалған индикаторды өшіреміз
                elevation: 0,
                // Таңдалған индексті контроллерден аламыз
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) =>
                    controller.changeIndex(index),

                // Төрт икон (сәйкесінше төрт экран)
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
        },
      ),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();

  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    FoodMenuScreen(),
    DeliveryScreen(),
    FavoriteScreen(),
  ];

  // Индексті ауыстыру әдісі
  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
