import 'package:flutter/material.dart';
import 'package:i_am_restaurant/features/home/screens/home/widgets/banner_item.dart';
import 'package:i_am_restaurant/features/home/screens/home/widgets/header.dart';
import 'package:i_am_restaurant/features/home/screens/home/widgets/popular_item.dart';
import 'package:i_am_restaurant/features/home/screens/home/widgets/recommend_item.dart';
import 'package:i_am_restaurant/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.secondary,

      body: SafeArea(
        child: Column(
          children: [
            const Header(),
            Expanded(
              child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      SizedBox(height: 20),
                      BannerItem(),
                      PopularItem(),
                      SizedBox(height: 20),
                      RecommendItem(),
                      SizedBox(height: 20),
                    ],
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
