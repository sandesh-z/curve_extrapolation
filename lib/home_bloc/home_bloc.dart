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
    on<_SetinitialState>(_onSetinitialState);
    on<_AddControlPoints>(_onAddControlPoints);
    on<_UpdateControlPoints>(_onUpdateControlPoints);
  }

  FutureOr<void> _onSetinitialState(
      _SetinitialState event, Emitter<HomeState> emit) {}

  FutureOr<void> _onAddControlPoints(
      _AddControlPoints event, Emitter<HomeState> emit) {
    emit(state.copyWith(controlPoints: event.controlPoints));
  }

  FutureOr<void> _onUpdateControlPoints(
      _UpdateControlPoints event, Emitter<HomeState> emit) {
    emit(state.copyWith(isLoading: true));
    emit(state.copyWith(
        isLoading: false,
        controlPoints: state.controlPoints..[event.index] = event.offset));
  }
}
