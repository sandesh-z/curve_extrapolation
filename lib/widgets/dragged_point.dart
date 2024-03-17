import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_bloc/home_bloc.dart';

class DraggedPoint extends StatefulWidget {
  final Offset initialPosition;
  final int index;

  const DraggedPoint(
      {super.key, required this.initialPosition, required this.index});

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
      left: currentPosition.dx - 10,
      top: currentPosition.dy - 10,
      child: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            currentPosition += details.delta;
          });
          context.read<HomeBloc>().add(
              HomeEvent.updateControlPoints(currentPosition, widget.index));
        },
        child: const CircleAvatar(
          radius: 10,
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
