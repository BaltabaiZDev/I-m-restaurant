import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/features/settings/screens/dashboard/widgets/dashboard_picture.dart';
import 'package:i_am_restaurant/features/settings/screens/profile/widgets/build_item.dart';

import '../edit_prifile/edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, automaticallyImplyLeading: false),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // Сол жақтағы IconButton
                  Positioned(
                    left: 0,
                    child: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(Icons.arrow_back_ios, size: 30),
                      color: Colors.black,
                    ),
                  ),
                  // Орталықтағы текст
                  const Center(child: Text("Оплата", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600))),
                  // Оң жаққа бос орын (егер теңестіргіңіз келсе)
                  Positioned(right: 0, child: SizedBox(width: 30)),
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: Row(
                  children: [
                    DashboardPicture(imagePath: 'assets/images/profile.png'),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jennie Kim', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text('I love fast food!', style: TextStyle(fontSize: 14, color: Colors.grey)),
                      ],
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () => Get.to(() => EditProfileScreen()),
                      child: Text(
                        "ETDIT",
                        style: TextStyle(
                          color: Color(0xffFF7622),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          decorationColor: Color(0xffFF7622),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(color: Color(0xffF6F8FA), borderRadius: BorderRadius.circular(16)),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // 1-қатар (Имя Фамилия)
                      BuildItem(title: 'Jennie Kim', image: 'assets/images/Name.png', subtitle: 'Имя Фамилия'),

                      const SizedBox(height: 16),

                      // 2-қатар (Почта)
                      BuildItem(title: 'Почта', image: 'assets/images/Email.png', subtitle: 'Rybyjane@gmail.com'),

                      const SizedBox(height: 16),

                      // 3-қатар (Номер телефона)
                      BuildItem(title: '87051485964', image: 'assets/images/Phone.png', subtitle: 'Номер телефона'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
