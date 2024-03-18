part of 'home_bloc.dart';

@Freezed(
  makeCollectionsUnmodifiable: false,
)
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<Offset> controlPoints,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(controlPoints: []);
}
