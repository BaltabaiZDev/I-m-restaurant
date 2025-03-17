import 'package:get/get.dart';

import '../../features/home/screens/delivery/delivery.dart';
import '../../features/home/screens/favorite/favorite.dart';
import '../../features/home/screens/food_menu/food_menu.dart';
import '../../features/home/screens/home/home.dart';

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();

  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), FoodMenuScreen(), DeliveryScreen(), FavoriteScreen()];

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
