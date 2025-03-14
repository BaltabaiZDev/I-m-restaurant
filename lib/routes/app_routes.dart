import 'package:get/get.dart';
import 'package:i_am_restaurant/features/home/screens/home/home.dart';
import 'package:i_am_restaurant/features/loading/screens/animation/animation.dart';
import 'package:i_am_restaurant/features/loading/screens/select_ln/select.dart';
import 'package:i_am_restaurant/features/loading/screens/start/start.dart';

class AppRoutes {
  static const String splash = '/';
  static const String start = '/start';
  static const String select = '/select';
  static const String animation = '/lottie';
  static const String home = '/home';

  static final pages = [
    GetPage(
      name: start,
      page: () => const StartPage(),
      transition: Transition.native,
      transitionDuration: Duration(milliseconds: 800),
    ),
    GetPage(
      name: animation,
      page: () => AnimationPage(),
      transition: Transition.native,
      transitionDuration: Duration(milliseconds: 800),
    ),
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(
      name: select,
      page: () => const SelectPage(),
      transition: Transition.native,
      transitionDuration: Duration(milliseconds: 800),
    ),
  ];
}
