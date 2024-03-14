import 'package:curve_extrapolation/utils/spline_painter.dart';
import 'package:flutter/material.dart';

import '../utils/open_painter.dart';

class DrawLine extends StatefulWidget {
  final List<Offset> offsets;
  const DrawLine({super.key, required this.offsets});

  @override
  State<DrawLine> createState() => _DrawLineState();
}

class _DrawLineState extends State<DrawLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            ...widget.offsets.map((e) {
              var _left = e.dx;
              var _top = e.dy;

              return Positioned(
                  left: _left,
                  top: _top,
                  child: GestureDetector(
                    onPanUpdate: (details) {
                      setState(() {
                        _left += details.delta.dx;
                        _top += details.delta.dy;
                      });
                    },
                    child: CustomPaint(
                        painter: OpenPainter(
                            singleOffset: e,
                            paintSingleOffset: true,
                            offset: widget.offsets)),
                  ));
            }),
            CustomPaint(painter: SplinePainter(offset: widget.offsets)),
          ],
        ),
      ),
    );
  }
}
