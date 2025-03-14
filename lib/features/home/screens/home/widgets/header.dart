import 'package:flutter/material.dart';
import 'package:i_am_restaurant/utils/constants/colors.dart';
import 'package:i_am_restaurant/utils/constants/text_styles.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            children: [
              Text("Hi Zhanibek", style: TTextStyles.h5.copyWith(color: TColors.typographyBlack)),
              const Spacer(),
              Image(image: const AssetImage("assets/images/user.png"), height: 35, width: 32),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 0.3),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Search",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
