import 'package:flutter/material.dart';
import 'package:i_am_restaurant/features/home/screens/home/widgets/build_item.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BuildItem(imageUrl: "assets/images/burger.png", label: "Акция!"),
          SizedBox(width: 10),
          BuildItem(imageUrl: "assets/images/cafe.png", label: null),
          SizedBox(width: 10), // Ара қа
        ],
      ),
    );
  }
}
