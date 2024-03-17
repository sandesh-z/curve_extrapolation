part of 'home_bloc.dart';

@Freezed(
  makeCollectionsUnmodifiable: false,
)
class HomeState with _$HomeState {
  factory HomeState(
      {required bool isLoading,
      @Default([]) List<Offset> controlPoints,
      required int currentIndex}) = _HomeState;

  factory HomeState.initial() =>
      HomeState(isLoading: false, controlPoints: [], currentIndex: 0);
}
