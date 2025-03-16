import 'package:get/get.dart';

class PopularItemController extends GetxController {
  var selectedIndex = RxInt(-1);

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  void onItemTapCancel() {
    selectedIndex.value = -1;
  }

  bool isSelected(int index) => selectedIndex.value == index;
}
