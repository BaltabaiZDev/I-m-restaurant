import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/common/widgets/profile_head.dart';
import 'package:i_am_restaurant/features/settings/screens/dashboard/widgets/dashboard_item.dart';
import 'package:i_am_restaurant/features/settings/screens/dashboard/widgets/dashboard_menu_item.dart';
import 'package:i_am_restaurant/features/settings/screens/dashboard/widgets/logout_sheet.dart';

import '../profile/profile.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Offset _buttonOffset = Offset.zero;
  double _buttonOpacity = 1.0;

  void _handleLogoutPressed() {
    setState(() {
      _buttonOffset = const Offset(0, 1);
      _buttonOpacity = 0.0;
    });
    Future.delayed(const Duration(milliseconds: 300), () {
      showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
        isScrollControlled: true,
        builder: (BuildContext context) {
          return LogoutConfirmationSheet(
            onConfirm: () {
              Navigator.pop(context);
            },
          );
        },
      ).then((_) {
        setState(() {
          _buttonOffset = Offset.zero;
          _buttonOpacity = 1.0;
        });
      });
    });
  }

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
              ProfileHead(title: ''),
              SizedBox(height: 30),
              DashboardItem(),
              DashboardMenuItem(
                icon: 'assets/images/14.png',
                title: 'Мой профиль',
                onTap: () => Get.to(() => const ProfileScreen()),
              ),
              DashboardMenuItem(icon: 'assets/images/19.png', title: 'Мои заказы'),
              DashboardMenuItem(icon: 'assets/images/18.png', title: 'Способы оплаты'),
              DashboardMenuItem(icon: 'assets/images/17.png', title: 'Контакты'),
              DashboardMenuItem(icon: 'assets/images/16.png', title: 'Настройки'),
              DashboardMenuItem(icon: 'assets/images/15.png', title: 'Help & FAQ'),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: AnimatedSlide(
                  offset: _buttonOffset,
                  duration: const Duration(milliseconds: 300),
                  child: AnimatedOpacity(
                    opacity: _buttonOpacity,
                    duration: const Duration(milliseconds: 300),
                    child: OutlinedButton.icon(
                      onPressed: _handleLogoutPressed,
                      icon: const Image(image: AssetImage('assets/images/logout.png'), height: 24, width: 24),
                      label: const Text(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
