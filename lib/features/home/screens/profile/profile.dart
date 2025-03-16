import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/features/home/screens/profile/widgets/logout_sheet.dart';

import 'widgets/profile_menu_item.dart';
import 'widgets/profile_picture.dart';

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
              Row(
                children: [
                  IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios), color: Colors.black),
                  const Spacer(),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const ProfilePicture(imagePath: 'assets/images/profile.png'),
                    const SizedBox(height: 10),
                    const Text('Jennie Kim', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    const Text('Rybyjane@gmail.com', style: TextStyle(fontSize: 14, color: Colors.grey)),
                    const SizedBox(height: 30),
                  ],
                ),
              ),

              // Меню айтемдері
              const ProfileMenuItem(icon: 'assets/images/14.png', title: 'Мой профиль'),
              const ProfileMenuItem(icon: 'assets/images/19.png', title: 'Мои заказы'),
              const ProfileMenuItem(icon: 'assets/images/18.png', title: 'Способы оплаты'),
              const ProfileMenuItem(icon: 'assets/images/17.png', title: 'Контакты'),
              const ProfileMenuItem(icon: 'assets/images/16.png', title: 'Настройки'),
              const ProfileMenuItem(icon: 'assets/images/15.png', title: 'Help & FAQ'),

              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: OutlinedButton.icon(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                      ),
                      builder: (BuildContext context) {
                        return LogoutConfirmationSheet(
                          onConfirm: () {
                            Navigator.pop(context); // sheet-ті жабу
                          },
                        );
                      },
                    );
                  },
                  icon: Image(image: AssetImage('assets/images/logout.png'), height: 24, width: 24),
                  label: Text(
                    'Log out',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.red),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
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
