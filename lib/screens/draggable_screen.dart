import 'package:curve_extrapolation/widgets/draw_perpendicular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_bloc/home_bloc.dart';
import '../utils/spline_painter.dart';
import '../widgets/dragged_point.dart';

class DraggableScreen extends StatefulWidget {
  final List<Offset> offsets;
  const DraggableScreen({super.key, required this.offsets});

  @override
  State<DraggableScreen> createState() => _DraggableScreenState();
}

class _DraggableScreenState extends State<DraggableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5D2EC0),
      body: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) =>
            previous.controlPoints != current.controlPoints ||
            previous.endPoint != current.endPoint ||
            previous.startpoint != current.startpoint,
        builder: (context, state) {
          return Stack(
            children: [
              backgroundContainer(context: context),
              //curve
              CustomPaint(
                  painter: SplinePainter(offset: state.controlPoints, context)),
              ..._buildDraggablePoints(state),

              //cliping last point
              CustomPaint(
                painter: PerpendicularLinePainter(
                    start: state.startpoint, end: state.controlPoints[4]),
              )
            ],
          );
        },
      ),
    );
  }
}

Widget backgroundContainer({required BuildContext context}) {
  var width = MediaQuery.of(context).size.width;
  return Center(
    child: Container(
      color: Colors.transparent,
      height: 400,
      width: width - 20,
      child: Container(
        alignment: Alignment.center,
        height: 400,
        margin: const EdgeInsets.all(10),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.white, width: 2)),
      ),
    ),
  );
}

List<Widget> _buildDraggablePoints(HomeState state) {
  return state.controlPoints.asMap().entries.map((entry) {
    int index = entry.key;
    Offset offset = entry.value;
    return CustomPaint(
      child: Stack(
        children: [
          DraggedPoint(
            parentSize: 400.0,
            initialPosition: offset,
            index: index,
          ),
        ],
      ),
    );
  }).toList();
}
