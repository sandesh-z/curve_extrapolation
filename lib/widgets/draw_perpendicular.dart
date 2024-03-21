import 'dart:math';

import 'package:flutter/material.dart';

class PerpendicularLinePainter extends CustomPainter {
  final Offset start, end;

  PerpendicularLinePainter(
      {super.repaint, required this.start, required this.end});
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.transparent //make paint same color as background color
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    final Paint paint2 = Paint()
      ..color = const Color(0xff5D2EC0)
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

//Watch STEPS first
    /// To clip last ball,
    ///
    /// STEP 1: a line is drawn say: AB

    //Original line (AB)
    canvas.drawLine(start, end, paint);

// Calculate slope of the original line
    double slope = (end.dy - start.dy) / (end.dx - start.dx);

//case for horizontal line
    if (slope == 0.0) {
      canvas.drawLine(
          Offset(end.dx, end.dy - 20), Offset(end.dx, end.dy + 20), paint2);
    } else {
// Calculate negative reciprocal of the slope to get slope of perpendicular line
      double perpendicularSlope = -1 / slope;

// Choose a point on the original line
      Offset originalPoint = end;

// Calculate the y-intercept of the perpendicular line using the chosen point
      double yIntercept =
          originalPoint.dy - perpendicularSlope * originalPoint.dx;

// Calculate the length of the perpendicular line
      double perpendicularLength =
          10; // Set the desired length of the perpendicular line

// Define x values for the perpendicular line (CD)
      double x1 = originalPoint.dx -
          perpendicularLength /
              sqrt(1 + perpendicularSlope * perpendicularSlope);
      double x2 = originalPoint.dx +
          perpendicularLength /
              sqrt(1 + perpendicularSlope * perpendicularSlope);

// Calculate corresponding y values for the perpendicular line (CD)
      double y1 = perpendicularSlope * x1 + yIntercept;
      double y2 = perpendicularSlope * x2 + yIntercept;

      /// STEP 2: Draw the perpendicular line (CD) drawn such that AB _|_ CD
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), paint2);
      double originalAngle = atan2(end.dy - start.dy, end.dx - start.dx);

// Calculate the angle perpendicular to the original line
      double perpendicularAngle =
          originalAngle + pi / 2; // 90 degrees clockwise rotation

// Calculate the center point of the semicircle
      double centerX = (x1 + x2) / 2;
      double centerY = (y1 + y2) / 2;

// Calculate the radius of the semicircle
      double radius = perpendicularLength;

// Calculate the start and end angles for the semicircle
      double startAngle = perpendicularAngle - pi; // Start from the bottom
      // double endAngle = perpendicularAngle; // End at the top

//STEP 3:  Draw the semicircle with base line as CD
      canvas.drawArc(
        Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
        startAngle,
        pi, // Half circle
        false,
        paint2, //make paint same color as background color
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
