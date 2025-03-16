import 'package:flutter/material.dart';

class DashboardMenuItem extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback? onTap;

  const DashboardMenuItem({super.key, required this.icon, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(color: Colors.red, image: AssetImage(icon), height: 24, width: 24),
      title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
      onTap: onTap,
    );
  }
}
