import 'package:get/get.dart';

class StartPageController extends GetxController {
  var opacity = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 1000), () {
      opacity.value = 1.0;
    });
  }
}
