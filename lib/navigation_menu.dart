import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/utils/constants/colors.dart';

import 'features/home/screens/home/home.dart';

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    Container(color: Colors.green),
    Container(color: Colors.red),
    Container(color: Colors.blue),
  ];
}

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: TColors.secondary,
          indicatorColor: Colors.transparent,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home,size: 40,), label: '',),
            NavigationDestination(icon: Icon(Icons.shop), label: ''),
            NavigationDestination(icon: Icon(Icons.label), label: ''),
            NavigationDestination(icon: Icon(Icons.message), label: ''),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
