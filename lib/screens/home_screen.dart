import 'package:curve_extrapolation/home_bloc/home_bloc.dart';
import 'package:curve_extrapolation/screens/draggable_screen.dart';
import 'package:curve_extrapolation/utils/spline_painter.dart';
import 'package:curve_extrapolation/widgets/instructions.dart';

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
  bool showIntrsuctions = true;
  List<Offset> offsets = [];

  ///update and add offset after each points are drawn
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5D2EC0),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            navigateToNextScreen(context: context, length: offsets.length);
          },
          child: const Text("Next")),
      body: Stack(
        children: [
          showIntrsuctions
              ? InstructionWidget(
                  onTap: () {
                    setState(() {
                      showIntrsuctions = false;
                    });
                  },
                )
              : const SizedBox(),
          GestureDetector(
            onTapDown: (details) => onTapDown(context, details),
            child: backgroundContainer(context: context),
          ),
          //draw each points
          for (final offset in offsets)
            Positioned(
              left: offset.dx - 10,
              top: offset.dy - 10,
              child: const CircleAvatar(
                radius: 10,
                backgroundColor: Color(0xffE7AB00),
              ),
            ),
          offsets.length > 4
              ? CustomPaint(
                  painter:
                      SplinePainter(offset: offsets, strokeWidth: 2.0, context),
                )
              : Container()
        ],
      ),
    );
  }

  void showSnackBar({required String message}) {
    var snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.purple.withOpacity(.7),
      elevation: 10,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void navigateToNextScreen(
      {required BuildContext context, required int length}) {
    if (offsets.length < 5) {
      showSnackBar(message: "Please enter all 5 points");
      return;
    }
    context.read<HomeBloc>().add(HomeEvent.addControlPoints(offsets));
    //navigate

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (_) => DraggableScreen(offsets: offsets),
        ),
        (route) => false);
  }
}
