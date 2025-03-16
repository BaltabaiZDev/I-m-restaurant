import 'package:flutter/material.dart';

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Жоғарғы сол бұрыштан бастаймыз
    path.moveTo(0, 0);

    // Төменге дейін тік сызық (height - 20)
    path.lineTo(0, size.height - 20);

    // Толқындар саны
    const segments = 5;
    // Әр толқынның ені
    final segmentWidth = size.width / segments;
    // Толқын биіктігі
    const waveHeight = 15.0;

    // Төменгі жиегі бойында бірнеше толқын жасау
    for (int i = 0; i < segments; i++) {
      final controlPointX = segmentWidth * i + (segmentWidth / 2);
      final controlPointY = (size.height - 20) + waveHeight;
      final endPointX = segmentWidth * (i + 1);
      final endPointY = size.height - 20;

      path.quadraticBezierTo(
        controlPointX,
        controlPointY,
        endPointX,
        endPointY,
      );
    }

    // Оң жақ жоғарғы бұрышқа дейін сызық
    path.lineTo(size.width, 0);
    // Фигураны жабамыз
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
