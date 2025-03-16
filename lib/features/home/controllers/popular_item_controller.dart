import 'package:get/get.dart';

class PopularItemController extends GetxController {
  var selectedIndex = RxInt(-1);
  void onItemTapped(int index) async {
    selectedIndex.value = index;
    await Future.delayed(const Duration(milliseconds: 150));
    selectedIndex.value = -1;

    // Get.to(() => NextScreen());
  }

  bool isSelected(int index) => selectedIndex.value == index;
}
