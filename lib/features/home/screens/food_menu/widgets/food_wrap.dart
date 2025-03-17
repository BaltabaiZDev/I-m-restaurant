import 'package:flutter/material.dart';

import '../../home/widgets/food_card_item.dart';

class FoodWrap extends StatelessWidget {
  const FoodWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
