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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    //y2 =total height of screen - half height of container - diameter of point
    var vertialClipPoint2 = height - 200.0 - 10.0;
    //y1
    var vertialClipPoint1 = height / 2 - 200.0 + 10.0;

    return Positioned(
      left: currentPosition.dx - 20,
      top: currentPosition.dy - 20,
      child: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            currentPosition += details.delta;

            currentPosition = Offset(
                // not allowing pionts to move to close to edge of the screen

                //horizontal constraints
                currentPosition.dx.clamp(20, width - 20),
                //vertical constraints according container of height 400 and width as width of screen
                currentPosition.dy.clamp(vertialClipPoint1, vertialClipPoint2));
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
