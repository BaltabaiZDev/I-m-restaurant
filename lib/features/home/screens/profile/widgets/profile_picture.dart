import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String imagePath;

  const ProfilePicture({super.key, required this.imagePath});

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
