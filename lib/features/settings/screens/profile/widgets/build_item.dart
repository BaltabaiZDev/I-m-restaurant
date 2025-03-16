import 'package:flutter/material.dart';

class BuildItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const BuildItem({super.key, required this.title, required this.image, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(radius: 20, backgroundColor: Colors.white, child: Image(image: AssetImage(image))),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subtitle, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 4),
            Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
