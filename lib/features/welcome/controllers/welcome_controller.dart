import 'package:get/get.dart';

class WelcomeController extends GetxController {
  // Observable to control the animation state.
  RxBool showSecondImage = false.obs;

  final showStartButtons = false.obs;

  @override
  void onReady() {
    super.onReady();
    // Automatically trigger the transition after 2 seconds.
    Future.delayed(const Duration(seconds: 2), () {
      showSecondImage.value = true;
    });
  }


}
