import 'package:curve_extrapolation/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CurveExtrapolationApp());
}

class CurveExtrapolationApp extends StatelessWidget {
  const CurveExtrapolationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}
