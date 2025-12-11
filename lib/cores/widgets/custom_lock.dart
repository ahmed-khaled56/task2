import 'package:flutter/material.dart';

class BottomNavPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();

    // Start left inward
    path.moveTo(0, size.height * .55);
    path.quadraticBezierTo(
      size.width * 0.10,
      size.height * 0.10,
      size.width * -0.3,
      size.height,
    );
    // Left curve
    path.quadraticBezierTo(
      size.width * 0.10,
      size.height * 0.10,
      size.width * 0.25,
      size.height * 0.15,
    );

    // Before center bump
    path.quadraticBezierTo(
      size.width * 0.40,
      size.height * 0.20,
      size.width * 0.46,
      size.height * 0.55,
    );

    // Center bump
    path.quadraticBezierTo(
      size.width * 0.50,
      size.height * 1.00,
      size.width * 0.54,
      size.height * 0.55,
    );

    // After bump
    path.quadraticBezierTo(
      size.width * 0.60,
      size.height * 0.20,
      size.width * 0.75,
      size.height * 0.15,
    );

    // Right curve
    path.quadraticBezierTo(
      size.width * 0.90,
      size.height * 0.10,
      size.width,
      size.height * 0.55,
    );

    // Close bottom
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
