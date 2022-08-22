import 'dart:ui';
import 'package:flutter/material.dart';

class Textt extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;
    Offset center = Offset(width / 2, height / 2);

    TextStyle style = const TextStyle(fontSize: 36.0);

    ParagraphBuilder builder = ParagraphBuilder(
      ParagraphStyle(
        fontSize: style.fontSize,
        fontWeight: style.fontWeight,
        fontStyle: style.fontStyle,
        fontFamily: style.fontFamily,
        textAlign: TextAlign.justify,
      ),
    );
    builder.addText('Hello World!');

    Paragraph paragraph = builder.build();
    paragraph.layout(
      ParagraphConstraints(width: width),
    );

    canvas.drawParagraph(paragraph,
        Offset((center.dx - paragraph.maxIntrinsicWidth / 2), center.dy));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
