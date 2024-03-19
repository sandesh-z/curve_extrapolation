import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_state.dart';
part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<_AddControlPoints>(_onAddControlPoints);
    on<_UpdateControlPoints>(_onUpdateControlPoints);
    on<_AddStartPoint>(__onAddStartPoint);
  }

  FutureOr<void> _onAddControlPoints(
      _AddControlPoints event, Emitter<HomeState> emit) {
    emit(state.copyWith(controlPoints: event.controlPoints));
  }

  FutureOr<void> _onUpdateControlPoints(
      _UpdateControlPoints event, Emitter<HomeState> emit) {
    emit(state.copyWith(
        controlPoints: state.controlPoints..[event.index] = event.offset));
    emit(state.copyWith(endPoint: state.controlPoints.last));
  }

  FutureOr<void> __onAddStartPoint(
      _AddStartPoint event, Emitter<HomeState> emit) {
    emit(state.copyWith(startpoint: event.startPoint));
  }
}
