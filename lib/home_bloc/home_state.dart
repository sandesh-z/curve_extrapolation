part of 'home_bloc.dart';

@Freezed(
  makeCollectionsUnmodifiable: false,
)
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<Offset> controlPoints,
    required Offset endPoint,
    required Offset startpoint,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
      controlPoints: [], endPoint: Offset.zero, startpoint: Offset.zero);
}
