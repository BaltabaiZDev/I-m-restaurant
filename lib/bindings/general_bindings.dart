import 'package:get/get.dart';

import '../data/repository/auth/auth_repo.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthRepo());
  }
}
