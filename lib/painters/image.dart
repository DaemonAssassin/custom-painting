import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class ImagePainter extends CustomPainter {
  ImagePainter(this.image);

  final ui.Image image;

  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;
    Offset sourceCenter = const ui.Offset(300, 300);
    Rect source = Rect.fromCenter(
      center: sourceCenter,
      width: 600,
      height: 600,
    );
    Offset destCenter = const ui.Offset(400, 400);
    Rect dest = Rect.fromCenter(
      center: destCenter,
      width: 100,
      height: 100,
    );
    canvas.drawImageRect(image, source, dest, Paint()..color = Colors.purple);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  double degToRad(int degree) => degree * pi / 180;
}
