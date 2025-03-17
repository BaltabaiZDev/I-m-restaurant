import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/utils/constants/colors.dart';
import 'package:i_am_restaurant/utils/constants/text_styles.dart';

import '../../features/home/screens/home/widgets/bottom_wave_clipper.dart';
import '../../features/settings/screens/dashboard/dashboard.dart';
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomWaveClipper(),
      child: Container(
        color: const Color(0xFFFCB614),
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text("Hi Zhanibek", style: TTextStyles.h5.copyWith(color: TColors.typographyBlack)),
                const Spacer(),
                GestureDetector(
                  onTap: () => Get.to(() => DashboardScreen()),
                  child: const Image(image: AssetImage("assets/images/user.png"), height: 35, width: 32),
                ),
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
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(icon: Icon(Icons.search), hintText: "Search", border: InputBorder.none),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
