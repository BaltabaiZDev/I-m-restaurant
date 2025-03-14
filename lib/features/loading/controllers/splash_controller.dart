import 'package:get/get.dart';
import 'package:i_am_restaurant/routes/app_routes.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(AppRoutes.select);
    });
  }
}
