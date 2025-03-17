import 'package:flutter/material.dart';
import 'package:i_am_restaurant/features/home/screens/home/widgets/banner_item.dart';
import 'package:i_am_restaurant/common/widgets/header.dart';
import 'package:i_am_restaurant/features/home/screens/home/widgets/popular_item.dart';
import 'package:i_am_restaurant/features/home/screens/home/widgets/recommend_item.dart';
import 'package:i_am_restaurant/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFCB614),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Header(),
            Expanded(
              child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const BannerItem(),
                      PopularItem(),
                      const SizedBox(height: 20),
                      const RecommendItem(),
                      const SizedBox(height: 20),
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
