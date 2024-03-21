import 'dart:ui';

import 'package:curve_extrapolation/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplinePainter extends CustomPainter {
  final List<Offset> offset;
  final double strokeWidth;
  final BuildContext context;

  SplinePainter(this.context,
      {super.repaint, required this.offset, this.strokeWidth = 20.0});
  @override
  void paint(Canvas canvas, Size size) {
    final spline = CatmullRomSpline(offset);

    final bezierPaint = Paint()
      // set the edges of stroke to be rounded
      ..strokeCap = StrokeCap.round
      ..strokeWidth = strokeWidth
      ..color = strokeWidth < 20.0 ? Colors.white : Colors.green;

    //generates samples to draw curve
    List<Offset> list = generatedFilteredSamples(spline, strokeWidth);

    //draw single curve for screen 1 and add start and end point which are last points of list of balls
    if (strokeWidth <= 5) {
      Offset startPoint = list[list.length - 8];

      context.read<HomeBloc>().add(HomeEvent.addStartPoint(startPoint));

      canvas.drawPoints(
        PointMode.points,
        generatedFilteredSamples(spline, strokeWidth),
        bezierPaint,
      );
      return;
    }

    //draw overlapping both curve and balls

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
        sampledPoints.add(currentPoint);
      }
    }
    return sampledPoints;
  }
}
