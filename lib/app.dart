import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.select,
      getPages: AppRoutes.pages,
    );
  }
}