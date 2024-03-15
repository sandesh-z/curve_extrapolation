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
      ..strokeWidth = 20;
    // apply a gradient
    // ..shader = const LinearGradient(colors: [
    //   Colors.purple,
    //   Colors.teal,
    // ]).createShader(Offset(0, size.height) & size);

    final samples = spline.generateSamples().map((e) => e.value).toList();
    final sampledPoints = [samples.first]; // Start with the first point

// Dynamically add points along the curve based on the distance between consecutive points
    for (int i = 1; i < samples.length; i++) {
      final previousPoint = sampledPoints.last;
      final currentPoint = samples[i];
      final distance = (currentPoint - previousPoint).distance;
      if (distance >= 20) {
        // Adjust this threshold as needed
        sampledPoints.add(currentPoint);
      }
    }
    canvas.drawPoints(
      PointMode.points,
      sampledPoints,
      bezierPaint,
    );
  }

  @override
  bool shouldRepaint(SplinePainter oldDelegate) => false;
}

List<Offset> filterNonOverlappingOffsets(
    List<Offset> offsets, double tolerance) {
  if (offsets.isEmpty) return []; // Handle empty list

  // Sort the list by x-coordinate to ensure proper comparison
  offsets.sort((a, b) => a.dx.compareTo(b.dx));

  List<Offset> filteredOffsets = [offsets.first]; // Start with the first point
  for (int i = 1; i < offsets.length; i++) {
    Offset current = offsets[i];
    Offset previous = filteredOffsets.last;

    // Check for overlap based on tolerance in both x and y directions
    if (current.dx - previous.dx > tolerance &&
        current.dy - previous.dy > tolerance) {
      filteredOffsets.add(current); // Add non-overlapping point
    }
  }

  return filteredOffsets;
}
