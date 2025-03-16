import 'package:flutter/material.dart';

class DashboardPicture extends StatelessWidget {
  final String imagePath;

  const DashboardPicture({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );
  }
}
