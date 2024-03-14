import 'package:flutter/material.dart';

class DragWidget extends StatefulWidget {
  @override
  _DragWidgetState createState() => _DragWidgetState();
}

class _DragWidgetState extends State<DragWidget> {
  double _left = 0.0;
  double _top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag Widget Example'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: _left,
            top: _top,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  _left += details.delta.dx;
                  _top += details.delta.dy;
                });
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Drag Me!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
