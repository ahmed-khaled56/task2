import 'package:flutter/material.dart';

class Customselect extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height;
    final w = size.width;
    final path = Path();
    path.moveTo(1.3 * w / 5, 4 * h / 6);
    path.quadraticBezierTo(w * .6, h / 2, 1.32 * w / 5, 2 * h / 6); //
    path.quadraticBezierTo(w * .2, h * .2, w / 2, h / 6);
    path.quadraticBezierTo(w * .8, .2 * h, 3.5 * w / 5, 2 * h / 6);
    path.quadraticBezierTo(w * .4, h / 2, 3.8 * w / 5, 4 * h / 6); //
    path.close();

    final paint = Paint()..color = Colors.white;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
