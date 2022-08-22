import 'dart:math';

import 'package:flutter/material.dart';

class RectAnglePainter extends CustomPainter {
  RectAnglePainter({required this.isFilled});

  final bool isFilled;

  @override
  void paint(Canvas canvas, Size size) {
    print(size);
    final double width = size.width;
    final double height = size.height;
    final double radius = min(width, height);
    final Offset center = Offset(width / 2, height / 2);

    // Paint
    Paint paint = Paint();
    paint.color = Colors.orange;
    isFilled
        ? paint.style = PaintingStyle.fill
        : paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.butt;
    paint.strokeJoin = StrokeJoin.bevel;
    paint.strokeWidth = 5;

    // drawing
    canvas.drawRect(Rect.fromCircle(center: center, radius: radius), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
