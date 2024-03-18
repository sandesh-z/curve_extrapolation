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
      body: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) =>
            previous.controlPoints != current.controlPoints,
        builder: (context, state) {
          return Stack(
            children: [
              CustomPaint(
                painter: SplinePainter(offset: state.controlPoints),
              ),
              ...state.controlPoints.asMap().entries.map((entry) {
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
              }),
              CustomPaint(
                  painter:
                      SplinePainter(offset: widget.offsets, strokeWidth: 2.0)),
            ],
          );
        },
      ),
    );
  }
}
