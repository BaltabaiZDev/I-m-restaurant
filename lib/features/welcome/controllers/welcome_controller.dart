import 'package:get/get.dart';

class WelcomeController extends GetxController {
  RxBool showSecondImage = false.obs;

  final showStartButtons = false.obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 2), () {
      showSecondImage.value = true;
    });
  }


}
