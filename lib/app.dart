import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/routes/app_routes.dart';

import 'bindings/general_bindings.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialBinding: GeneralBindings(),
      getPages: AppRoutes.pages,
      home: const Scaffold(backgroundColor: Colors.white, body: Center(child: CircularProgressIndicator())),
    );
  }
}
