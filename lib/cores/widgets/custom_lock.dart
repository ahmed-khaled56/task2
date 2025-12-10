import 'package:flutter/material.dart';

class SmoothCapsulePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 130, 231, 135)
      ..style = PaintingStyle.fill;

    final r = RRect.fromLTRBR(
      0,
      0,
      size.width,
      size.height,
      const Radius.circular(50), // كل ما تكبر الرقم، النعومة تزيد
    );

    canvas.drawRRect(r, paint);
    final path = Path();
    final w = size.width;
    final h = size.height;

    path.moveTo(0, size.height / 2); // بداية الذيل من أعلى يمين الكبسولة
    path.quadraticBezierTo(
      w,
      h * 0, // نقطة التحكم
      size.width,
      -6, // وسط الذيل
    );
    path.quadraticBezierTo(
      w,
      h, // نقطة التحكم الثانية
      size.width,
      h * 1.13, // رجوع لنهاية الكبسولة من الأسفل
    );
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
