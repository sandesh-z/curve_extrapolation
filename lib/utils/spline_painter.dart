import 'dart:ui';

import 'package:flutter/material.dart';

class SplinePainter extends CustomPainter {
  final List<Offset> offset;

  SplinePainter({super.repaint, required this.offset});
  @override
  void paint(Canvas canvas, Size size) {
    // canvas.drawPaint(Paint()..color = Colors.white);

    final spline = CatmullRomSpline(offset);

    final bezierPaint = Paint()
      // set the edges of stroke to be rounded
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2;
    // apply a gradient
    // ..shader = const LinearGradient(colors: [
    //   Colors.purple,
    //   Colors.teal,
    // ]).createShader(Offset(0, size.height) & size);

    // This method accepts a list of offsets and draws points for all offset
    canvas.drawPoints(
      PointMode.points,
      spline.generateSamples().map((e) => e.value).toList(),
      bezierPaint,
    );
  }

  @override
  bool shouldRepaint(SplinePainter oldDelegate) => false;
}
