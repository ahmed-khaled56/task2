import 'package:flutter/material.dart';
import 'package:taske2/cores/widgets/custom_lock.dart';

class customHill extends StatelessWidget {
  final IconData icon;
  final double? width;
  final double? hieght;
  final double? iconSize;
  final Color? iconColor;
  const customHill({
    super.key,
    required this.icon,
    this.width,
    @required this.hieght,
    @required this.iconSize,
    @required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: width == null ? 180 : width,
        height: hieght == null ? 130 : hieght,
        child: CustomPaint(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Icon(
                color: iconColor == null ? Colors.black : iconColor,
                size: iconSize == null ? 23 : iconSize,
                icon,
              ),
            ),
          ),
          painter: CustomNotch(),
        ),
      ),
    );
  }
}
