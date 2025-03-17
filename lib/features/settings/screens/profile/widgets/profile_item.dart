import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../dashboard/widgets/dashboard_picture.dart';
import '../../edit_profile/edit_profile.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
