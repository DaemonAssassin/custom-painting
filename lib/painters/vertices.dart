import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class VerticesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;
    final positions = [
      const Offset(0, 0),
      Offset(0, height / 2),
      Offset(0, height),
      Offset(width / 2, 0),
      Offset(width / 2, height / 2),
      Offset(width / 2, height),
      Offset(width, 0),
      Offset(width, height / 2),
      Offset(width, height),
    ];
    Vertices vertices = Vertices(VertexMode.triangleFan, positions);

    canvas.drawVertices(
      vertices,
      BlendMode.plus,
      Paint()..color = Colors.blue,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  double degToRad(int degree) => degree * pi / 180;
}
