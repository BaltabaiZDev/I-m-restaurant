import 'package:flutter/material.dart';

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 0);

    path.lineTo(0, size.height - 20);

    const segments = 5;
    final segmentWidth = size.width / segments;
    const waveHeight = 15.0;

    for (int i = 0; i < segments; i++) {
      final controlPointX = segmentWidth * i + (segmentWidth / 2);
      final controlPointY = (size.height - 20) + waveHeight;
      final endPointX = segmentWidth * (i + 1);
      final endPointY = size.height - 20;

      path.quadraticBezierTo(controlPointX, controlPointY, endPointX, endPointY);
    }

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
