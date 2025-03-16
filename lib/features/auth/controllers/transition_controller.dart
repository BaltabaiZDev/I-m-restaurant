import 'package:get/get.dart';
import 'package:i_am_restaurant/navigation_menu.dart';

import '../../home/screens/home/home.dart';
class TransitionController extends GetxController {
  // Пайдаланушының атын алу үшін
  final String name;

  // Overlay opacity: бастапқыда 1.0 (толық қараңғы)
  var overlayOpacity = 0.5.obs;
  // Мәтін opacity: бастапқыда 0.0 (көрінбейді)
  var textOpacity = 0.0.obs;

  TransitionController(this.name);

  @override
  void onInit() {
    super.onInit();
    // 1 секундтан кейін overlay біртіндеп жойылады
    Future.delayed(const Duration(milliseconds: 500), () {
      overlayOpacity.value = 0.0;
    });

    // Overlay ашық болған кезде (мысалы, 1.6 секундтан кейін) мәтін шығады
    Future.delayed(const Duration(milliseconds: 500), () {
      textOpacity.value = 1.0;
    });

    // Барлығы 4 секунд өткен соң HomeScreen-ге өтеміз
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => const NavigationMenu());
    });
  }
}
