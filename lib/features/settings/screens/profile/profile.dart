import 'package:flutter/material.dart';
import 'package:i_am_restaurant/features/settings/screens/profile/widgets/profile_component.dart';
import 'package:i_am_restaurant/common/widgets/profile_head.dart';
import 'package:i_am_restaurant/features/settings/screens/profile/widgets/profile_item.dart';


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
              ProfileHead(),
              SizedBox(height: 40),
              ProfileItem(),
              SizedBox(height: 50),
              ProfileComponent(),
            ],
          ),
        ),
      ),
    );
  }
}



