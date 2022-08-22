import 'dart:math';

import 'package:flutter/material.dart';

class Smily extends StatelessWidget {
  const Smily({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _SmilyPainter(),
    );
  }
}

class _SmilyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width;
    final double height = size.height;
    final double radius = (min(width, height) / 2);
    final Offset center = Offset(width / 2, height / 2);
    final Offset leftEyeBallOffset =
        Offset(center.dx - radius / 2, center.dy - radius / 2);
    final Offset rightEyeBallOffset =
        Offset(center.dx + radius / 2, center.dy - radius / 2);
    final double eyeBallRadius = radius * 0.1;

    // face paint
    Paint facePaint = Paint()..color = Colors.yellow;
    // drawing face
    canvas.drawCircle(center, radius, facePaint);

    // mouth paint
    Paint mouthPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0;
    // drawing face
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius / 2), 0, pi,
        true, mouthPaint);

    // eyeBall paint
    Paint eyeBallPaint = Paint()..color = Colors.black;
    // drawing left eyeBall
    canvas.drawCircle(leftEyeBallOffset, eyeBallRadius, eyeBallPaint);
    // drawing right eyeBall
    canvas.drawCircle(rightEyeBallOffset, eyeBallRadius, eyeBallPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  double degToRad(int radian) {
    return radian * pi / 180;
  }
}
