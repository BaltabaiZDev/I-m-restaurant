import 'package:flutter/material.dart';
import 'package:i_am_restaurant/common/widgets/header.dart';
import 'package:i_am_restaurant/features/home/screens/food_menu/widgets/categories.dart';
import 'package:i_am_restaurant/features/home/screens/food_menu/widgets/food_wrap.dart';

class FoodMenuScreen extends StatefulWidget {
  const FoodMenuScreen({super.key});

  @override
  State<FoodMenuScreen> createState() => _FoodMenuScreenState();
}

class _FoodMenuScreenState extends State<FoodMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFFCB614),
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [const Header(), Categories(), FoodWrap()],
        ),
      ),
    );
  }
}
