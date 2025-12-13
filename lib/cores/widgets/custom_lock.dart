import 'package:flutter/material.dart';

class CustomNotch extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(0, size.height * 0.35);
    final path = Path();
    path.moveTo(size.width / 3, size.height / 2);
    path.quadraticBezierTo(
      size.width * .5,
      size.height * .2,
      2 * size.width / 3,
      size.height / 2,
    );

    path.quadraticBezierTo(
      3 * size.width / 4,
      size.height * .6,
      4 * size.width / 5,
      5 * size.height / 8,
    );
    path.lineTo(size.width / 3, size.height / 2);
    path.quadraticBezierTo(
      size.width * .25,
      size.height * .6,
      size.width / 5,
      5 * size.height / 8,
    );
    path.lineTo(4 * size.width / 5, 5 * size.height / 8);
    //path.close();
    final paint = Paint()..color = Colors.white;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
