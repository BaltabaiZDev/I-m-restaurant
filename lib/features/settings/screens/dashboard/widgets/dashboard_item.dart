import 'package:flutter/material.dart';

import 'dashboard_picture.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(height: 20),
          DashboardPicture(imagePath: 'assets/images/profile.png'),
          SizedBox(height: 10),
          Text('Jennie Kim', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          Text('Rybyjane@gmail.com', style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w400)),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
