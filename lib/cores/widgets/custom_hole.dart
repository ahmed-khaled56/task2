import 'package:flutter/material.dart';

class HolePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint hole = Paint()..blendMode = BlendMode.clear;

    canvas.drawCircle(Offset(size.width / 2, -5), 25, hole);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
