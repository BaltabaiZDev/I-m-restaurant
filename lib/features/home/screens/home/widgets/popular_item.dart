import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/utils/constants/colors.dart';
import 'package:i_am_restaurant/utils/constants/text_styles.dart';
import '../../../controllers/popular_item_controller.dart';
import 'second_build_item.dart';

class PopularItem extends StatelessWidget {
  PopularItem({super.key});

  final controller = Get.put(PopularItemController());

  final List<String> imagePaths = [
    'assets/images/img.png',
    'assets/images/img_1.png',
    'assets/images/img_2.png',
    'assets/images/img_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "Самые популярные",
            style: TTextStyles.h5.copyWith(
              color: TColors.typographyBlack,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 15),
              ...imagePaths.asMap().entries.map((entry) {
                int idx = entry.key;
                String img = entry.value;
                return SecondBuildItem(image: img, index: idx);
              }),
              const SizedBox(width: 25),
            ],
          ),
        ),
      ],
    );
  }
}
