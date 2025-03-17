import 'package:get/get.dart';
import 'package:i_am_restaurant/common/widgets/navigation_menu.dart';

class TransitionController extends GetxController {
  final String name;

  var overlayOpacity = 0.5.obs;
  var textOpacity = 0.0.obs;

  TransitionController(this.name);

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 500), () {
      overlayOpacity.value = 0.0;
    });

    Future.delayed(const Duration(milliseconds: 500), () {
      textOpacity.value = 1.0;
    });

    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => const NavigationMenu());
    });
  }
}
