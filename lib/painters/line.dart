import 'package:flutter/material.dart';

class Line extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;

    canvas.drawColor(Colors.orange, BlendMode.darken);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
