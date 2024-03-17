import 'package:curve_extrapolation/home_bloc/home_bloc.dart';
import 'package:curve_extrapolation/screens/draggable_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            context.read<HomeBloc>().add(HomeEvent.addControlPoints(offsets));
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => DraggableScreen(offsets: offsets)));
          },
          child: const Text("Next")),
      body: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable,
        onTapDown: (TapDownDetails details) {
          //paint
          onTapDown(context, details);
        },
        child: Stack(
          children: [
            for (var offset in offsets) ...[
              Stack(
                children: [
                  Positioned(
                      left: offset.dx - 10,
                      top: offset.dy - 10,
                      child: const CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                      ))
                ],
              ),
            ]
          ],
        ),
      ),
    );
  }
}
