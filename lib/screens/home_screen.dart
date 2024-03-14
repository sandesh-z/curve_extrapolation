import 'package:curve_extrapolation/screens/draw_line.dart';

import 'package:flutter/material.dart';

import '../utils/open_painter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double posx = 100.0;
  double posy = 100.0;
  List<Offset> offsets = [];

  void onTapDown(BuildContext context, TapDownDetails details) {
    late Offset localOffset;
    final RenderObject? box = context.findRenderObject();
    if (box is RenderBox) {
      localOffset = box.globalToLocal(details.globalPosition);
    }
    setState(() {
      posx = localOffset.dx;
      posy = localOffset.dy;
      if (offsets.length < 5) {
        offsets.add(Offset(posx, posy));
      }
    });
  }

  bool paint = false;
  bool onNextpressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              onNextpressed = true;
            });
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => DrawLine(
                      offsets: offsets,
                    )));
          },
          child: const Text("Next")),
      body: Container(
        color: Colors.white,
        height: double.maxFinite,
        width: double.maxFinite,
        child: InkWell(
          mouseCursor: MaterialStateMouseCursor.clickable,
          onTapDown: (TapDownDetails details) {
            //paint
            onTapDown(context, details);
            setState(() {
              paint = true;
            });
          },
          child: CustomPaint(painter: OpenPainter(offset: offsets)),
        ),
      ),
    );
  }
}
