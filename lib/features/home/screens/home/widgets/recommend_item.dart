import 'package:flutter/material.dart';
import 'package:i_am_restaurant/features/home/screens/home/widgets/food_card_item.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_styles.dart';

class RecommendItem extends StatelessWidget {
  const RecommendItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "Я знаю что ты хочешь!",
            style: TTextStyles.h5.copyWith(color: TColors.typographyBlack, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              FoodCardItem(image: "assets/images/img_4.png", nameOfFood: "Chicken qazan", time: "12 Minutes",),
              FoodCardItem(image: "assets/images/img_5.png", nameOfFood: "Цезарь рол", time: "6 Minutes"),
              FoodCardItem(image: "assets/images/img_4.png", nameOfFood: "Chicken qazan", time: "12 Minutes"),
              const SizedBox(width: 25),
            ],
          ),
        ),
      ],
    );
  }
}
