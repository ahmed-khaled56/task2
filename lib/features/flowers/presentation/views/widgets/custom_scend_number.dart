import 'package:flutter/material.dart';

class CustomScendNumber extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width / 4, 0);
    path.quadraticBezierTo(
      size.width / 2,
      size.height * .19,
      3 * size.width / 4,
      0,
    );
    path.quadraticBezierTo(
      size.width,
      size.height * .8,
      3 * size.width / 4,
      3 * size.height / 4,
    );

    path.quadraticBezierTo(
      size.width / 2,
      size.height * .65,
      size.width / 4,
      3 * size.height / 4,
    );

    path.quadraticBezierTo(0, size.height * .7, size.width / 4, 0);

    final paint = Paint()..color = Color.fromARGB(255, 122, 212, 110);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
