import 'dart:ui';

import 'package:flutter/material.dart';

class SplinePainter extends CustomPainter {
  final List<Offset> offset;
  final double strokeWidth;

  SplinePainter({super.repaint, required this.offset, this.strokeWidth = 20.0});
  @override
  void paint(Canvas canvas, Size size) {
    // canvas.drawPaint(Paint()..color = Colors.white);

    final spline = CatmullRomSpline(offset);

    final bezierPaint = Paint()
      // set the edges of stroke to be rounded
      ..strokeCap = StrokeCap.round
      ..strokeWidth = strokeWidth
      ..color = strokeWidth < 20.0 ? Colors.white : Colors.green;

    canvas.drawPoints(
      PointMode.points,
      generatedFilteredSamples(spline, strokeWidth),
      bezierPaint,
    );
  }

  @override
  bool shouldRepaint(SplinePainter oldDelegate) => false;

  List<Offset> generatedFilteredSamples(
      CatmullRomSpline spline, double strokeWidth) {
    final samples = spline.generateSamples().map((e) => e.value).toList();
    final sampledPoints = [samples.first]; // Start with the first point

// Dynamically add points along the curve based on the distance between consecutive points
    for (int i = 1; i < samples.length; i++) {
      final previousPoint = sampledPoints.last;
      final currentPoint = samples[i];
      final distance = (currentPoint - previousPoint).distance;
      if (distance >= strokeWidth) {
        // Adjust this threshold as needed
        sampledPoints.add(currentPoint);
      }
    }
    return sampledPoints;
  }
}
