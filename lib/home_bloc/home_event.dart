part of 'home_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.setInitialState() = _SetinitialState;
  const factory HomeEvent.updateControlPoints(Offset offset, int index) =
      _UpdateControlPoints;
  factory HomeEvent.addControlPoints(List<Offset> controlPoints) =
      _AddControlPoints;
}
