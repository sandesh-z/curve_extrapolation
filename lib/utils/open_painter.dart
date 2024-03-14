import 'package:flutter/material.dart';

class OpenPainter extends CustomPainter {
  final List<Offset> offset;
  final bool paintSingleOffset;
  final Offset? singleOffset;

  OpenPainter(
      {super.repaint,
      required this.offset,
      this.paintSingleOffset = false,
      this.singleOffset});
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.red
      ..strokeWidth = 10;
    if (paintSingleOffset) {
      canvas.drawCircle(singleOffset!, 10, paint1);
    } else {
      for (int i = 0; i < offset.length; i++) {
        canvas.drawCircle(offset[i], 10, paint1);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
