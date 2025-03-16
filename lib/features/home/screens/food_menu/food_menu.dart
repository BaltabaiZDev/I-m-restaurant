import 'package:flutter/material.dart';
import 'package:i_am_restaurant/features/home/screens/food_menu/widgets/categories.dart';
import 'package:i_am_restaurant/common/widgets/header.dart';

import '../home/widgets/food_card_item.dart';

class FoodMenuScreen extends StatefulWidget {
  const FoodMenuScreen({super.key});

  @override
  State<FoodMenuScreen> createState() => _FoodMenuScreenState();
}

class _FoodMenuScreenState extends State<FoodMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, backgroundColor: const Color(0xFFFCB614)),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),

            Categories(),
            // Төменгі тамақ карточкалары
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 11),
                    child: Wrap(
                      spacing: 0,
                      runSpacing: 20,
                      children: const [
                        FoodCardItem(
                          image: 'assets/images/img_5.png',
                          nameOfFood: 'Chicken qazaan',
                          time: '12 Minutes',
                          price: '1500тг',
                        ),
                        FoodCardItem(
                          image: 'assets/images/img_5.png',
                          nameOfFood: 'Chicken qazaan',
                          time: '12 Minutes',
                          price: '1500тг',
                        ),
                        FoodCardItem(
                          image: 'assets/images/img_5.png',
                          nameOfFood: 'Chicken qazaan',
                          time: '12 Minutes',
                          price: '1500тг',
                        ),
                        FoodCardItem(
                          image: 'assets/images/img_5.png',
                          nameOfFood: 'Chicken qazaan',
                          time: '12 Minutes',
                          price: '1500тг',
                        ),
                        FoodCardItem(
                          image: 'assets/images/img_5.png',
                          nameOfFood: 'Chicken qazaan',
                          time: '12 Minutes',
                          price: '1500тг',
                        ),
                        // Басқа карточкалар...
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
