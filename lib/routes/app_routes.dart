import 'package:get/get.dart';

import '../features/home/screens/home/home.dart';
import '../features/welcome/screens/welcome/welcome_screen.dart';

class AppRoutes {
  static const String welcome = '/welcome';
  static const String home = '/';

  static final pages = [
    GetPage(name: welcome, page: () => WelcomeScreen(), transition: Transition.native, transitionDuration: Duration(milliseconds: 800)),
    GetPage(name: home, page: () => const HomeScreen()),
  ];
}
