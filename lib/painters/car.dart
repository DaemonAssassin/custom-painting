import 'dart:math';

import 'package:flutter/material.dart';

class Car extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;

    //! Offsets
    Offset startOffset = Offset(width * 0.1, height * 0.7);
    Offset bodyEndOffset = Offset(width * 0.9, height * 0.7);

    Offset rightArcEndOffset = Offset(width * 0.9, height * 0.6);
    Offset leftArcEndOffset = Offset(width * 0.1, height * 0.6);

    Offset rightQBConOffset = Offset(width * 0.889, height * 0.55);
    Offset rightQBEndOffset = Offset(width * 0.89, height * 0.5);

    Offset leftQBEndOffset = Offset(width * 0.89, height * 0.5);

    //! Paint
    Paint carBodyPaint = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.stroke;

    Path path = Path();
    path.moveTo(startOffset.dx, startOffset.dy);
    path.lineTo(bodyEndOffset.dx, bodyEndOffset.dy);
    path.conicTo(
      width,
      height * 0.65,
      rightArcEndOffset.dx,
      rightArcEndOffset.dy,
      0.3,
    );
    path.quadraticBezierTo(
      rightQBConOffset.dx,
      rightQBConOffset.dy,
      rightQBEndOffset.dx,
      rightQBEndOffset.dy,
    );

    path.addArc(
      Rect.fromLTRB(
        width * 0.3,
        height * 0.05,
        width * 0.89,
        height * 0.95,
      ),
      degToRad(180),
      degToRad(180),
    );

    path.quadraticBezierTo(
        width * 0.305, height * 0.46, width * 0.29, height * 0.46);

    // path.conicTo(
    //   width * 0.2,
    //   height * 0.3,
    //   leftArcEndOffset.dx,
    //   leftArcEndOffset.dy,
    //   1,
    // );

    path.conicTo(
      0,
      height * 0.65,
      width * 0.1,
      height * 0.7,
      0.3,
    );
    // path.close();

    canvas.drawPath(path, carBodyPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  double degToRad(int deg) => deg * pi / 180;
}
