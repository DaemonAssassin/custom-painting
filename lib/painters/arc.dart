import 'dart:math';

import 'package:flutter/material.dart';

class Arc extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;

    // paint
    Paint paint = Paint()..color = Colors.yellow;

    // rect
    Rect rect = const Rect.fromLTRB(100.0, 100.0, 500.0, 120.0);

    // arc
    canvas.drawArc(
      rect,
      degToRad(30),
      degToRad(300),
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  double degToRad(int degree) => degree * pi / 180;
}
