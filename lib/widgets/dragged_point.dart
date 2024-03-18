import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_bloc/home_bloc.dart';

class DraggedPoint extends StatefulWidget {
  final Offset initialPosition;
  final int index;
  final double parentSize;

  const DraggedPoint(
      {super.key,
      required this.initialPosition,
      required this.index,
      required this.parentSize});

  @override
  State<DraggedPoint> createState() => _DraggedPointState();
}

class _DraggedPointState extends State<DraggedPoint> {
  late Offset currentPosition;

  @override
  void initState() {
    super.initState();
    currentPosition = widget.initialPosition;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: currentPosition.dx - 20,
      top: currentPosition.dy - 20,
      child: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            currentPosition += details.delta;
            currentPosition = Offset(
                // Adjust bounds as needed
                currentPosition.dx.clamp(0, 500.0),
                currentPosition.dy.clamp(200, 500.0) // Adjust bounds as needed
                );
          });
          context.read<HomeBloc>().add(
              HomeEvent.updateControlPoints(currentPosition, widget.index));
        },
        child: const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.transparent,
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 5,
          ),
        ),
      ),
    );
  }
}
