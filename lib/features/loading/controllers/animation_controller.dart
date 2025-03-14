import 'package:get/get.dart';
import 'package:i_am_restaurant/routes/app_routes.dart';

class AnimationScreenController extends GetxController {
  static AnimationScreenController get instance => Get.find();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 1), () {
      Get.offNamed(AppRoutes.start);
    });
  }
}
