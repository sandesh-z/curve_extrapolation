import 'package:curve_extrapolation/home_bloc/home_bloc.dart';
import 'package:curve_extrapolation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CurveExtrapolationApp());
}

class CurveExtrapolationApp extends StatelessWidget {
  const CurveExtrapolationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: const HomeScreen()),
    );
  }
}
