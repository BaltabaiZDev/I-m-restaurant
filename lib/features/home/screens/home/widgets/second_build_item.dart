import 'package:flutter/material.dart';

class SecondBuildItem extends StatelessWidget {
  final String image;

  const SecondBuildItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset(image, fit: BoxFit.cover)),
    );
  }
}
