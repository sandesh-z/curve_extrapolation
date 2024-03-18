// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  List<Offset> get controlPoints => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({List<Offset> controlPoints});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlPoints = null,
  }) {
    return _then(_value.copyWith(
      controlPoints: null == controlPoints
          ? _value.controlPoints
          : controlPoints // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offset> controlPoints});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlPoints = null,
  }) {
    return _then(_$HomeStateImpl(
      controlPoints: null == controlPoints
          ? _value.controlPoints
          : controlPoints // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl({this.controlPoints = const []});

  @override
  @JsonKey()
  final List<Offset> controlPoints;

  @override
  String toString() {
    return 'HomeState(controlPoints: $controlPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other.controlPoints, controlPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(controlPoints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState({final List<Offset> controlPoints}) = _$HomeStateImpl;

  @override
  List<Offset> get controlPoints;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset offset, int index) updateControlPoints,
    required TResult Function(List<Offset> controlPoints) addControlPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset offset, int index)? updateControlPoints,
    TResult? Function(List<Offset> controlPoints)? addControlPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset offset, int index)? updateControlPoints,
    TResult Function(List<Offset> controlPoints)? addControlPoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateControlPoints value) updateControlPoints,
    required TResult Function(_AddControlPoints value) addControlPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateControlPoints value)? updateControlPoints,
    TResult? Function(_AddControlPoints value)? addControlPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateControlPoints value)? updateControlPoints,
    TResult Function(_AddControlPoints value)? addControlPoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateControlPointsImplCopyWith<$Res> {
  factory _$$UpdateControlPointsImplCopyWith(_$UpdateControlPointsImpl value,
          $Res Function(_$UpdateControlPointsImpl) then) =
      __$$UpdateControlPointsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Offset offset, int index});
}

/// @nodoc
class __$$UpdateControlPointsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateControlPointsImpl>
    implements _$$UpdateControlPointsImplCopyWith<$Res> {
  __$$UpdateControlPointsImplCopyWithImpl(_$UpdateControlPointsImpl _value,
      $Res Function(_$UpdateControlPointsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? index = null,
  }) {
    return _then(_$UpdateControlPointsImpl(
      null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateControlPointsImpl implements _UpdateControlPoints {
  const _$UpdateControlPointsImpl(this.offset, this.index);

  @override
  final Offset offset;
  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.updateControlPoints(offset: $offset, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateControlPointsImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateControlPointsImplCopyWith<_$UpdateControlPointsImpl> get copyWith =>
      __$$UpdateControlPointsImplCopyWithImpl<_$UpdateControlPointsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset offset, int index) updateControlPoints,
    required TResult Function(List<Offset> controlPoints) addControlPoints,
  }) {
    return updateControlPoints(offset, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset offset, int index)? updateControlPoints,
    TResult? Function(List<Offset> controlPoints)? addControlPoints,
  }) {
    return updateControlPoints?.call(offset, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset offset, int index)? updateControlPoints,
    TResult Function(List<Offset> controlPoints)? addControlPoints,
    required TResult orElse(),
  }) {
    if (updateControlPoints != null) {
      return updateControlPoints(offset, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateControlPoints value) updateControlPoints,
    required TResult Function(_AddControlPoints value) addControlPoints,
  }) {
    return updateControlPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateControlPoints value)? updateControlPoints,
    TResult? Function(_AddControlPoints value)? addControlPoints,
  }) {
    return updateControlPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateControlPoints value)? updateControlPoints,
    TResult Function(_AddControlPoints value)? addControlPoints,
    required TResult orElse(),
  }) {
    if (updateControlPoints != null) {
      return updateControlPoints(this);
    }
    return orElse();
  }
}

abstract class _UpdateControlPoints implements HomeEvent {
  const factory _UpdateControlPoints(final Offset offset, final int index) =
      _$UpdateControlPointsImpl;

  Offset get offset;
  int get index;
  @JsonKey(ignore: true)
  _$$UpdateControlPointsImplCopyWith<_$UpdateControlPointsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddControlPointsImplCopyWith<$Res> {
  factory _$$AddControlPointsImplCopyWith(_$AddControlPointsImpl value,
          $Res Function(_$AddControlPointsImpl) then) =
      __$$AddControlPointsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Offset> controlPoints});
}

/// @nodoc
class __$$AddControlPointsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddControlPointsImpl>
    implements _$$AddControlPointsImplCopyWith<$Res> {
  __$$AddControlPointsImplCopyWithImpl(_$AddControlPointsImpl _value,
      $Res Function(_$AddControlPointsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlPoints = null,
  }) {
    return _then(_$AddControlPointsImpl(
      null == controlPoints
          ? _value.controlPoints
          : controlPoints // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ));
  }
}

/// @nodoc

class _$AddControlPointsImpl implements _AddControlPoints {
  _$AddControlPointsImpl(this.controlPoints);

  @override
  final List<Offset> controlPoints;

  @override
  String toString() {
    return 'HomeEvent.addControlPoints(controlPoints: $controlPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddControlPointsImpl &&
            const DeepCollectionEquality()
                .equals(other.controlPoints, controlPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(controlPoints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddControlPointsImplCopyWith<_$AddControlPointsImpl> get copyWith =>
      __$$AddControlPointsImplCopyWithImpl<_$AddControlPointsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset offset, int index) updateControlPoints,
    required TResult Function(List<Offset> controlPoints) addControlPoints,
  }) {
    return addControlPoints(controlPoints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset offset, int index)? updateControlPoints,
    TResult? Function(List<Offset> controlPoints)? addControlPoints,
  }) {
    return addControlPoints?.call(controlPoints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset offset, int index)? updateControlPoints,
    TResult Function(List<Offset> controlPoints)? addControlPoints,
    required TResult orElse(),
  }) {
    if (addControlPoints != null) {
      return addControlPoints(controlPoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateControlPoints value) updateControlPoints,
    required TResult Function(_AddControlPoints value) addControlPoints,
  }) {
    return addControlPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateControlPoints value)? updateControlPoints,
    TResult? Function(_AddControlPoints value)? addControlPoints,
  }) {
    return addControlPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateControlPoints value)? updateControlPoints,
    TResult Function(_AddControlPoints value)? addControlPoints,
    required TResult orElse(),
  }) {
    if (addControlPoints != null) {
      return addControlPoints(this);
    }
    return orElse();
  }
}

abstract class _AddControlPoints implements HomeEvent {
  factory _AddControlPoints(final List<Offset> controlPoints) =
      _$AddControlPointsImpl;

  List<Offset> get controlPoints;
  @JsonKey(ignore: true)
  _$$AddControlPointsImplCopyWith<_$AddControlPointsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
