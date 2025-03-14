import 'package:flutter/material.dart';
import 'package:i_am_restaurant/features/home/screens/home/widgets/second_build_item.dart';
import 'package:i_am_restaurant/utils/constants/colors.dart';
import 'package:i_am_restaurant/utils/constants/text_styles.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/images/img.png',
      'assets/images/img_1.png',
      'assets/images/img_2.png',
      'assets/images/img_3.png',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "Самые популярные",
            style: TTextStyles.h5.copyWith(color: TColors.typographyBlack, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 15),
              ...imagePaths.map((image) {
                return SecondBuildItem(image: image);
              }),

              const SizedBox(width: 25),
            ],
          ),
        ),
      ],
    );
  }
}
