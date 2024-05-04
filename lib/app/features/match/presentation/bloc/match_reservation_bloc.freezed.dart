// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_reservation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MatchReservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSports,
    required TResult Function(StadiumParams params) getStadiums,
    required TResult Function(ReserviedTimesParams params) getTimes,
    required TResult Function(int dayOrder, int? stadiumId) changeTimes,
    required TResult Function() reserve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSports,
    TResult? Function(StadiumParams params)? getStadiums,
    TResult? Function(ReserviedTimesParams params)? getTimes,
    TResult? Function(int dayOrder, int? stadiumId)? changeTimes,
    TResult? Function()? reserve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSports,
    TResult Function(StadiumParams params)? getStadiums,
    TResult Function(ReserviedTimesParams params)? getTimes,
    TResult Function(int dayOrder, int? stadiumId)? changeTimes,
    TResult Function()? reserve,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_GetStadiumsEvent value) getStadiums,
    required TResult Function(_GetTimesEvent value) getTimes,
    required TResult Function(_ChangeTimesEvent value) changeTimes,
    required TResult Function(_ReserveEvent value) reserve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_GetStadiumsEvent value)? getStadiums,
    TResult? Function(_GetTimesEvent value)? getTimes,
    TResult? Function(_ChangeTimesEvent value)? changeTimes,
    TResult? Function(_ReserveEvent value)? reserve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_GetStadiumsEvent value)? getStadiums,
    TResult Function(_GetTimesEvent value)? getTimes,
    TResult Function(_ChangeTimesEvent value)? changeTimes,
    TResult Function(_ReserveEvent value)? reserve,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchReservationEventCopyWith<$Res> {
  factory $MatchReservationEventCopyWith(MatchReservationEvent value,
          $Res Function(MatchReservationEvent) then) =
      _$MatchReservationEventCopyWithImpl<$Res, MatchReservationEvent>;
}

/// @nodoc
class _$MatchReservationEventCopyWithImpl<$Res,
        $Val extends MatchReservationEvent>
    implements $MatchReservationEventCopyWith<$Res> {
  _$MatchReservationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSportsEventImplCopyWith<$Res> {
  factory _$$GetSportsEventImplCopyWith(_$GetSportsEventImpl value,
          $Res Function(_$GetSportsEventImpl) then) =
      __$$GetSportsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSportsEventImplCopyWithImpl<$Res>
    extends _$MatchReservationEventCopyWithImpl<$Res, _$GetSportsEventImpl>
    implements _$$GetSportsEventImplCopyWith<$Res> {
  __$$GetSportsEventImplCopyWithImpl(
      _$GetSportsEventImpl _value, $Res Function(_$GetSportsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSportsEventImpl implements _GetSportsEvent {
  const _$GetSportsEventImpl();

  @override
  String toString() {
    return 'MatchReservationEvent.getSports()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSportsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSports,
    required TResult Function(StadiumParams params) getStadiums,
    required TResult Function(ReserviedTimesParams params) getTimes,
    required TResult Function(int dayOrder, int? stadiumId) changeTimes,
    required TResult Function() reserve,
  }) {
    return getSports();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSports,
    TResult? Function(StadiumParams params)? getStadiums,
    TResult? Function(ReserviedTimesParams params)? getTimes,
    TResult? Function(int dayOrder, int? stadiumId)? changeTimes,
    TResult? Function()? reserve,
  }) {
    return getSports?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSports,
    TResult Function(StadiumParams params)? getStadiums,
    TResult Function(ReserviedTimesParams params)? getTimes,
    TResult Function(int dayOrder, int? stadiumId)? changeTimes,
    TResult Function()? reserve,
    required TResult orElse(),
  }) {
    if (getSports != null) {
      return getSports();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_GetStadiumsEvent value) getStadiums,
    required TResult Function(_GetTimesEvent value) getTimes,
    required TResult Function(_ChangeTimesEvent value) changeTimes,
    required TResult Function(_ReserveEvent value) reserve,
  }) {
    return getSports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_GetStadiumsEvent value)? getStadiums,
    TResult? Function(_GetTimesEvent value)? getTimes,
    TResult? Function(_ChangeTimesEvent value)? changeTimes,
    TResult? Function(_ReserveEvent value)? reserve,
  }) {
    return getSports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_GetStadiumsEvent value)? getStadiums,
    TResult Function(_GetTimesEvent value)? getTimes,
    TResult Function(_ChangeTimesEvent value)? changeTimes,
    TResult Function(_ReserveEvent value)? reserve,
    required TResult orElse(),
  }) {
    if (getSports != null) {
      return getSports(this);
    }
    return orElse();
  }
}

abstract class _GetSportsEvent implements MatchReservationEvent {
  const factory _GetSportsEvent() = _$GetSportsEventImpl;
}

/// @nodoc
abstract class _$$GetStadiumsEventImplCopyWith<$Res> {
  factory _$$GetStadiumsEventImplCopyWith(_$GetStadiumsEventImpl value,
          $Res Function(_$GetStadiumsEventImpl) then) =
      __$$GetStadiumsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StadiumParams params});
}

/// @nodoc
class __$$GetStadiumsEventImplCopyWithImpl<$Res>
    extends _$MatchReservationEventCopyWithImpl<$Res, _$GetStadiumsEventImpl>
    implements _$$GetStadiumsEventImplCopyWith<$Res> {
  __$$GetStadiumsEventImplCopyWithImpl(_$GetStadiumsEventImpl _value,
      $Res Function(_$GetStadiumsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$GetStadiumsEventImpl(
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as StadiumParams,
    ));
  }
}

/// @nodoc

class _$GetStadiumsEventImpl implements _GetStadiumsEvent {
  const _$GetStadiumsEventImpl({required this.params});

  @override
  final StadiumParams params;

  @override
  String toString() {
    return 'MatchReservationEvent.getStadiums(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStadiumsEventImpl &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStadiumsEventImplCopyWith<_$GetStadiumsEventImpl> get copyWith =>
      __$$GetStadiumsEventImplCopyWithImpl<_$GetStadiumsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSports,
    required TResult Function(StadiumParams params) getStadiums,
    required TResult Function(ReserviedTimesParams params) getTimes,
    required TResult Function(int dayOrder, int? stadiumId) changeTimes,
    required TResult Function() reserve,
  }) {
    return getStadiums(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSports,
    TResult? Function(StadiumParams params)? getStadiums,
    TResult? Function(ReserviedTimesParams params)? getTimes,
    TResult? Function(int dayOrder, int? stadiumId)? changeTimes,
    TResult? Function()? reserve,
  }) {
    return getStadiums?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSports,
    TResult Function(StadiumParams params)? getStadiums,
    TResult Function(ReserviedTimesParams params)? getTimes,
    TResult Function(int dayOrder, int? stadiumId)? changeTimes,
    TResult Function()? reserve,
    required TResult orElse(),
  }) {
    if (getStadiums != null) {
      return getStadiums(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_GetStadiumsEvent value) getStadiums,
    required TResult Function(_GetTimesEvent value) getTimes,
    required TResult Function(_ChangeTimesEvent value) changeTimes,
    required TResult Function(_ReserveEvent value) reserve,
  }) {
    return getStadiums(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_GetStadiumsEvent value)? getStadiums,
    TResult? Function(_GetTimesEvent value)? getTimes,
    TResult? Function(_ChangeTimesEvent value)? changeTimes,
    TResult? Function(_ReserveEvent value)? reserve,
  }) {
    return getStadiums?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_GetStadiumsEvent value)? getStadiums,
    TResult Function(_GetTimesEvent value)? getTimes,
    TResult Function(_ChangeTimesEvent value)? changeTimes,
    TResult Function(_ReserveEvent value)? reserve,
    required TResult orElse(),
  }) {
    if (getStadiums != null) {
      return getStadiums(this);
    }
    return orElse();
  }
}

abstract class _GetStadiumsEvent implements MatchReservationEvent {
  const factory _GetStadiumsEvent({required final StadiumParams params}) =
      _$GetStadiumsEventImpl;

  StadiumParams get params;
  @JsonKey(ignore: true)
  _$$GetStadiumsEventImplCopyWith<_$GetStadiumsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTimesEventImplCopyWith<$Res> {
  factory _$$GetTimesEventImplCopyWith(
          _$GetTimesEventImpl value, $Res Function(_$GetTimesEventImpl) then) =
      __$$GetTimesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReserviedTimesParams params});
}

/// @nodoc
class __$$GetTimesEventImplCopyWithImpl<$Res>
    extends _$MatchReservationEventCopyWithImpl<$Res, _$GetTimesEventImpl>
    implements _$$GetTimesEventImplCopyWith<$Res> {
  __$$GetTimesEventImplCopyWithImpl(
      _$GetTimesEventImpl _value, $Res Function(_$GetTimesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$GetTimesEventImpl(
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ReserviedTimesParams,
    ));
  }
}

/// @nodoc

class _$GetTimesEventImpl implements _GetTimesEvent {
  const _$GetTimesEventImpl({required this.params});

  @override
  final ReserviedTimesParams params;

  @override
  String toString() {
    return 'MatchReservationEvent.getTimes(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTimesEventImpl &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTimesEventImplCopyWith<_$GetTimesEventImpl> get copyWith =>
      __$$GetTimesEventImplCopyWithImpl<_$GetTimesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSports,
    required TResult Function(StadiumParams params) getStadiums,
    required TResult Function(ReserviedTimesParams params) getTimes,
    required TResult Function(int dayOrder, int? stadiumId) changeTimes,
    required TResult Function() reserve,
  }) {
    return getTimes(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSports,
    TResult? Function(StadiumParams params)? getStadiums,
    TResult? Function(ReserviedTimesParams params)? getTimes,
    TResult? Function(int dayOrder, int? stadiumId)? changeTimes,
    TResult? Function()? reserve,
  }) {
    return getTimes?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSports,
    TResult Function(StadiumParams params)? getStadiums,
    TResult Function(ReserviedTimesParams params)? getTimes,
    TResult Function(int dayOrder, int? stadiumId)? changeTimes,
    TResult Function()? reserve,
    required TResult orElse(),
  }) {
    if (getTimes != null) {
      return getTimes(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_GetStadiumsEvent value) getStadiums,
    required TResult Function(_GetTimesEvent value) getTimes,
    required TResult Function(_ChangeTimesEvent value) changeTimes,
    required TResult Function(_ReserveEvent value) reserve,
  }) {
    return getTimes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_GetStadiumsEvent value)? getStadiums,
    TResult? Function(_GetTimesEvent value)? getTimes,
    TResult? Function(_ChangeTimesEvent value)? changeTimes,
    TResult? Function(_ReserveEvent value)? reserve,
  }) {
    return getTimes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_GetStadiumsEvent value)? getStadiums,
    TResult Function(_GetTimesEvent value)? getTimes,
    TResult Function(_ChangeTimesEvent value)? changeTimes,
    TResult Function(_ReserveEvent value)? reserve,
    required TResult orElse(),
  }) {
    if (getTimes != null) {
      return getTimes(this);
    }
    return orElse();
  }
}

abstract class _GetTimesEvent implements MatchReservationEvent {
  const factory _GetTimesEvent({required final ReserviedTimesParams params}) =
      _$GetTimesEventImpl;

  ReserviedTimesParams get params;
  @JsonKey(ignore: true)
  _$$GetTimesEventImplCopyWith<_$GetTimesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTimesEventImplCopyWith<$Res> {
  factory _$$ChangeTimesEventImplCopyWith(_$ChangeTimesEventImpl value,
          $Res Function(_$ChangeTimesEventImpl) then) =
      __$$ChangeTimesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int dayOrder, int? stadiumId});
}

/// @nodoc
class __$$ChangeTimesEventImplCopyWithImpl<$Res>
    extends _$MatchReservationEventCopyWithImpl<$Res, _$ChangeTimesEventImpl>
    implements _$$ChangeTimesEventImplCopyWith<$Res> {
  __$$ChangeTimesEventImplCopyWithImpl(_$ChangeTimesEventImpl _value,
      $Res Function(_$ChangeTimesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOrder = null,
    Object? stadiumId = freezed,
  }) {
    return _then(_$ChangeTimesEventImpl(
      dayOrder: null == dayOrder
          ? _value.dayOrder
          : dayOrder // ignore: cast_nullable_to_non_nullable
              as int,
      stadiumId: freezed == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ChangeTimesEventImpl implements _ChangeTimesEvent {
  const _$ChangeTimesEventImpl({required this.dayOrder, this.stadiumId});

  @override
  final int dayOrder;
  @override
  final int? stadiumId;

  @override
  String toString() {
    return 'MatchReservationEvent.changeTimes(dayOrder: $dayOrder, stadiumId: $stadiumId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTimesEventImpl &&
            (identical(other.dayOrder, dayOrder) ||
                other.dayOrder == dayOrder) &&
            (identical(other.stadiumId, stadiumId) ||
                other.stadiumId == stadiumId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dayOrder, stadiumId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTimesEventImplCopyWith<_$ChangeTimesEventImpl> get copyWith =>
      __$$ChangeTimesEventImplCopyWithImpl<_$ChangeTimesEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSports,
    required TResult Function(StadiumParams params) getStadiums,
    required TResult Function(ReserviedTimesParams params) getTimes,
    required TResult Function(int dayOrder, int? stadiumId) changeTimes,
    required TResult Function() reserve,
  }) {
    return changeTimes(dayOrder, stadiumId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSports,
    TResult? Function(StadiumParams params)? getStadiums,
    TResult? Function(ReserviedTimesParams params)? getTimes,
    TResult? Function(int dayOrder, int? stadiumId)? changeTimes,
    TResult? Function()? reserve,
  }) {
    return changeTimes?.call(dayOrder, stadiumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSports,
    TResult Function(StadiumParams params)? getStadiums,
    TResult Function(ReserviedTimesParams params)? getTimes,
    TResult Function(int dayOrder, int? stadiumId)? changeTimes,
    TResult Function()? reserve,
    required TResult orElse(),
  }) {
    if (changeTimes != null) {
      return changeTimes(dayOrder, stadiumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_GetStadiumsEvent value) getStadiums,
    required TResult Function(_GetTimesEvent value) getTimes,
    required TResult Function(_ChangeTimesEvent value) changeTimes,
    required TResult Function(_ReserveEvent value) reserve,
  }) {
    return changeTimes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_GetStadiumsEvent value)? getStadiums,
    TResult? Function(_GetTimesEvent value)? getTimes,
    TResult? Function(_ChangeTimesEvent value)? changeTimes,
    TResult? Function(_ReserveEvent value)? reserve,
  }) {
    return changeTimes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_GetStadiumsEvent value)? getStadiums,
    TResult Function(_GetTimesEvent value)? getTimes,
    TResult Function(_ChangeTimesEvent value)? changeTimes,
    TResult Function(_ReserveEvent value)? reserve,
    required TResult orElse(),
  }) {
    if (changeTimes != null) {
      return changeTimes(this);
    }
    return orElse();
  }
}

abstract class _ChangeTimesEvent implements MatchReservationEvent {
  const factory _ChangeTimesEvent(
      {required final int dayOrder,
      final int? stadiumId}) = _$ChangeTimesEventImpl;

  int get dayOrder;
  int? get stadiumId;
  @JsonKey(ignore: true)
  _$$ChangeTimesEventImplCopyWith<_$ChangeTimesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReserveEventImplCopyWith<$Res> {
  factory _$$ReserveEventImplCopyWith(
          _$ReserveEventImpl value, $Res Function(_$ReserveEventImpl) then) =
      __$$ReserveEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReserveEventImplCopyWithImpl<$Res>
    extends _$MatchReservationEventCopyWithImpl<$Res, _$ReserveEventImpl>
    implements _$$ReserveEventImplCopyWith<$Res> {
  __$$ReserveEventImplCopyWithImpl(
      _$ReserveEventImpl _value, $Res Function(_$ReserveEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReserveEventImpl implements _ReserveEvent {
  const _$ReserveEventImpl();

  @override
  String toString() {
    return 'MatchReservationEvent.reserve()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReserveEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSports,
    required TResult Function(StadiumParams params) getStadiums,
    required TResult Function(ReserviedTimesParams params) getTimes,
    required TResult Function(int dayOrder, int? stadiumId) changeTimes,
    required TResult Function() reserve,
  }) {
    return reserve();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSports,
    TResult? Function(StadiumParams params)? getStadiums,
    TResult? Function(ReserviedTimesParams params)? getTimes,
    TResult? Function(int dayOrder, int? stadiumId)? changeTimes,
    TResult? Function()? reserve,
  }) {
    return reserve?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSports,
    TResult Function(StadiumParams params)? getStadiums,
    TResult Function(ReserviedTimesParams params)? getTimes,
    TResult Function(int dayOrder, int? stadiumId)? changeTimes,
    TResult Function()? reserve,
    required TResult orElse(),
  }) {
    if (reserve != null) {
      return reserve();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_GetStadiumsEvent value) getStadiums,
    required TResult Function(_GetTimesEvent value) getTimes,
    required TResult Function(_ChangeTimesEvent value) changeTimes,
    required TResult Function(_ReserveEvent value) reserve,
  }) {
    return reserve(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_GetStadiumsEvent value)? getStadiums,
    TResult? Function(_GetTimesEvent value)? getTimes,
    TResult? Function(_ChangeTimesEvent value)? changeTimes,
    TResult? Function(_ReserveEvent value)? reserve,
  }) {
    return reserve?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_GetStadiumsEvent value)? getStadiums,
    TResult Function(_GetTimesEvent value)? getTimes,
    TResult Function(_ChangeTimesEvent value)? changeTimes,
    TResult Function(_ReserveEvent value)? reserve,
    required TResult orElse(),
  }) {
    if (reserve != null) {
      return reserve(this);
    }
    return orElse();
  }
}

abstract class _ReserveEvent implements MatchReservationEvent {
  const factory _ReserveEvent() = _$ReserveEventImpl;
}

/// @nodoc
mixin _$MatchReservationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? failure) sportsFailure,
    required TResult Function(List<SportEntity> sports) sportsScuccess,
    required TResult Function(Failure? failure) courtsFailure,
    required TResult Function(List<SportStadiumEntity> stadiums) courtsScuccess,
    required TResult Function(Failure? failure) timesFailure,
    required TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)
        timesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? failure)? sportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsScuccess,
    TResult? Function(Failure? failure)? courtsFailure,
    TResult? Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult? Function(Failure? failure)? timesFailure,
    TResult? Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? failure)? sportsFailure,
    TResult Function(List<SportEntity> sports)? sportsScuccess,
    TResult Function(Failure? failure)? courtsFailure,
    TResult Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult Function(Failure? failure)? timesFailure,
    TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(sportsFailure value) sportsFailure,
    required TResult Function(sportsScuccess value) sportsScuccess,
    required TResult Function(courtsFailure value) courtsFailure,
    required TResult Function(courtsScuccess value) courtsScuccess,
    required TResult Function(timesFailure value) timesFailure,
    required TResult Function(timesSuccess value) timesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(sportsFailure value)? sportsFailure,
    TResult? Function(sportsScuccess value)? sportsScuccess,
    TResult? Function(courtsFailure value)? courtsFailure,
    TResult? Function(courtsScuccess value)? courtsScuccess,
    TResult? Function(timesFailure value)? timesFailure,
    TResult? Function(timesSuccess value)? timesSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(sportsFailure value)? sportsFailure,
    TResult Function(sportsScuccess value)? sportsScuccess,
    TResult Function(courtsFailure value)? courtsFailure,
    TResult Function(courtsScuccess value)? courtsScuccess,
    TResult Function(timesFailure value)? timesFailure,
    TResult Function(timesSuccess value)? timesSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchReservationStateCopyWith<$Res> {
  factory $MatchReservationStateCopyWith(MatchReservationState value,
          $Res Function(MatchReservationState) then) =
      _$MatchReservationStateCopyWithImpl<$Res, MatchReservationState>;
}

/// @nodoc
class _$MatchReservationStateCopyWithImpl<$Res,
        $Val extends MatchReservationState>
    implements $MatchReservationStateCopyWith<$Res> {
  _$MatchReservationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MatchReservationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MatchReservationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? failure) sportsFailure,
    required TResult Function(List<SportEntity> sports) sportsScuccess,
    required TResult Function(Failure? failure) courtsFailure,
    required TResult Function(List<SportStadiumEntity> stadiums) courtsScuccess,
    required TResult Function(Failure? failure) timesFailure,
    required TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)
        timesSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? failure)? sportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsScuccess,
    TResult? Function(Failure? failure)? courtsFailure,
    TResult? Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult? Function(Failure? failure)? timesFailure,
    TResult? Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? failure)? sportsFailure,
    TResult Function(List<SportEntity> sports)? sportsScuccess,
    TResult Function(Failure? failure)? courtsFailure,
    TResult Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult Function(Failure? failure)? timesFailure,
    TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(sportsFailure value) sportsFailure,
    required TResult Function(sportsScuccess value) sportsScuccess,
    required TResult Function(courtsFailure value) courtsFailure,
    required TResult Function(courtsScuccess value) courtsScuccess,
    required TResult Function(timesFailure value) timesFailure,
    required TResult Function(timesSuccess value) timesSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(sportsFailure value)? sportsFailure,
    TResult? Function(sportsScuccess value)? sportsScuccess,
    TResult? Function(courtsFailure value)? courtsFailure,
    TResult? Function(courtsScuccess value)? courtsScuccess,
    TResult? Function(timesFailure value)? timesFailure,
    TResult? Function(timesSuccess value)? timesSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(sportsFailure value)? sportsFailure,
    TResult Function(sportsScuccess value)? sportsScuccess,
    TResult Function(courtsFailure value)? courtsFailure,
    TResult Function(courtsScuccess value)? courtsScuccess,
    TResult Function(timesFailure value)? timesFailure,
    TResult Function(timesSuccess value)? timesSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MatchReservationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$loadingImplCopyWith<$Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl value, $Res Function(_$loadingImpl) then) =
      __$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<$Res>
    extends _$MatchReservationStateCopyWithImpl<$Res, _$loadingImpl>
    implements _$$loadingImplCopyWith<$Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl _value, $Res Function(_$loadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingImpl implements loading {
  const _$loadingImpl();

  @override
  String toString() {
    return 'MatchReservationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? failure) sportsFailure,
    required TResult Function(List<SportEntity> sports) sportsScuccess,
    required TResult Function(Failure? failure) courtsFailure,
    required TResult Function(List<SportStadiumEntity> stadiums) courtsScuccess,
    required TResult Function(Failure? failure) timesFailure,
    required TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)
        timesSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? failure)? sportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsScuccess,
    TResult? Function(Failure? failure)? courtsFailure,
    TResult? Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult? Function(Failure? failure)? timesFailure,
    TResult? Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? failure)? sportsFailure,
    TResult Function(List<SportEntity> sports)? sportsScuccess,
    TResult Function(Failure? failure)? courtsFailure,
    TResult Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult Function(Failure? failure)? timesFailure,
    TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(sportsFailure value) sportsFailure,
    required TResult Function(sportsScuccess value) sportsScuccess,
    required TResult Function(courtsFailure value) courtsFailure,
    required TResult Function(courtsScuccess value) courtsScuccess,
    required TResult Function(timesFailure value) timesFailure,
    required TResult Function(timesSuccess value) timesSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(sportsFailure value)? sportsFailure,
    TResult? Function(sportsScuccess value)? sportsScuccess,
    TResult? Function(courtsFailure value)? courtsFailure,
    TResult? Function(courtsScuccess value)? courtsScuccess,
    TResult? Function(timesFailure value)? timesFailure,
    TResult? Function(timesSuccess value)? timesSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(sportsFailure value)? sportsFailure,
    TResult Function(sportsScuccess value)? sportsScuccess,
    TResult Function(courtsFailure value)? courtsFailure,
    TResult Function(courtsScuccess value)? courtsScuccess,
    TResult Function(timesFailure value)? timesFailure,
    TResult Function(timesSuccess value)? timesSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class loading implements MatchReservationState {
  const factory loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$sportsFailureImplCopyWith<$Res> {
  factory _$$sportsFailureImplCopyWith(
          _$sportsFailureImpl value, $Res Function(_$sportsFailureImpl) then) =
      __$$sportsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$sportsFailureImplCopyWithImpl<$Res>
    extends _$MatchReservationStateCopyWithImpl<$Res, _$sportsFailureImpl>
    implements _$$sportsFailureImplCopyWith<$Res> {
  __$$sportsFailureImplCopyWithImpl(
      _$sportsFailureImpl _value, $Res Function(_$sportsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$sportsFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$sportsFailureImpl implements sportsFailure {
  const _$sportsFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'MatchReservationState.sportsFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$sportsFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$sportsFailureImplCopyWith<_$sportsFailureImpl> get copyWith =>
      __$$sportsFailureImplCopyWithImpl<_$sportsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? failure) sportsFailure,
    required TResult Function(List<SportEntity> sports) sportsScuccess,
    required TResult Function(Failure? failure) courtsFailure,
    required TResult Function(List<SportStadiumEntity> stadiums) courtsScuccess,
    required TResult Function(Failure? failure) timesFailure,
    required TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)
        timesSuccess,
  }) {
    return sportsFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? failure)? sportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsScuccess,
    TResult? Function(Failure? failure)? courtsFailure,
    TResult? Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult? Function(Failure? failure)? timesFailure,
    TResult? Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
  }) {
    return sportsFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? failure)? sportsFailure,
    TResult Function(List<SportEntity> sports)? sportsScuccess,
    TResult Function(Failure? failure)? courtsFailure,
    TResult Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult Function(Failure? failure)? timesFailure,
    TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
    required TResult orElse(),
  }) {
    if (sportsFailure != null) {
      return sportsFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(sportsFailure value) sportsFailure,
    required TResult Function(sportsScuccess value) sportsScuccess,
    required TResult Function(courtsFailure value) courtsFailure,
    required TResult Function(courtsScuccess value) courtsScuccess,
    required TResult Function(timesFailure value) timesFailure,
    required TResult Function(timesSuccess value) timesSuccess,
  }) {
    return sportsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(sportsFailure value)? sportsFailure,
    TResult? Function(sportsScuccess value)? sportsScuccess,
    TResult? Function(courtsFailure value)? courtsFailure,
    TResult? Function(courtsScuccess value)? courtsScuccess,
    TResult? Function(timesFailure value)? timesFailure,
    TResult? Function(timesSuccess value)? timesSuccess,
  }) {
    return sportsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(sportsFailure value)? sportsFailure,
    TResult Function(sportsScuccess value)? sportsScuccess,
    TResult Function(courtsFailure value)? courtsFailure,
    TResult Function(courtsScuccess value)? courtsScuccess,
    TResult Function(timesFailure value)? timesFailure,
    TResult Function(timesSuccess value)? timesSuccess,
    required TResult orElse(),
  }) {
    if (sportsFailure != null) {
      return sportsFailure(this);
    }
    return orElse();
  }
}

abstract class sportsFailure implements MatchReservationState {
  const factory sportsFailure({final Failure? failure}) = _$sportsFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$sportsFailureImplCopyWith<_$sportsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$sportsScuccessImplCopyWith<$Res> {
  factory _$$sportsScuccessImplCopyWith(_$sportsScuccessImpl value,
          $Res Function(_$sportsScuccessImpl) then) =
      __$$sportsScuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SportEntity> sports});
}

/// @nodoc
class __$$sportsScuccessImplCopyWithImpl<$Res>
    extends _$MatchReservationStateCopyWithImpl<$Res, _$sportsScuccessImpl>
    implements _$$sportsScuccessImplCopyWith<$Res> {
  __$$sportsScuccessImplCopyWithImpl(
      _$sportsScuccessImpl _value, $Res Function(_$sportsScuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sports = null,
  }) {
    return _then(_$sportsScuccessImpl(
      sports: null == sports
          ? _value._sports
          : sports // ignore: cast_nullable_to_non_nullable
              as List<SportEntity>,
    ));
  }
}

/// @nodoc

class _$sportsScuccessImpl implements sportsScuccess {
  const _$sportsScuccessImpl({final List<SportEntity> sports = const []})
      : _sports = sports;

  final List<SportEntity> _sports;
  @override
  @JsonKey()
  List<SportEntity> get sports {
    if (_sports is EqualUnmodifiableListView) return _sports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sports);
  }

  @override
  String toString() {
    return 'MatchReservationState.sportsScuccess(sports: $sports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$sportsScuccessImpl &&
            const DeepCollectionEquality().equals(other._sports, _sports));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sports));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$sportsScuccessImplCopyWith<_$sportsScuccessImpl> get copyWith =>
      __$$sportsScuccessImplCopyWithImpl<_$sportsScuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? failure) sportsFailure,
    required TResult Function(List<SportEntity> sports) sportsScuccess,
    required TResult Function(Failure? failure) courtsFailure,
    required TResult Function(List<SportStadiumEntity> stadiums) courtsScuccess,
    required TResult Function(Failure? failure) timesFailure,
    required TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)
        timesSuccess,
  }) {
    return sportsScuccess(sports);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? failure)? sportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsScuccess,
    TResult? Function(Failure? failure)? courtsFailure,
    TResult? Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult? Function(Failure? failure)? timesFailure,
    TResult? Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
  }) {
    return sportsScuccess?.call(sports);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? failure)? sportsFailure,
    TResult Function(List<SportEntity> sports)? sportsScuccess,
    TResult Function(Failure? failure)? courtsFailure,
    TResult Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult Function(Failure? failure)? timesFailure,
    TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
    required TResult orElse(),
  }) {
    if (sportsScuccess != null) {
      return sportsScuccess(sports);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(sportsFailure value) sportsFailure,
    required TResult Function(sportsScuccess value) sportsScuccess,
    required TResult Function(courtsFailure value) courtsFailure,
    required TResult Function(courtsScuccess value) courtsScuccess,
    required TResult Function(timesFailure value) timesFailure,
    required TResult Function(timesSuccess value) timesSuccess,
  }) {
    return sportsScuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(sportsFailure value)? sportsFailure,
    TResult? Function(sportsScuccess value)? sportsScuccess,
    TResult? Function(courtsFailure value)? courtsFailure,
    TResult? Function(courtsScuccess value)? courtsScuccess,
    TResult? Function(timesFailure value)? timesFailure,
    TResult? Function(timesSuccess value)? timesSuccess,
  }) {
    return sportsScuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(sportsFailure value)? sportsFailure,
    TResult Function(sportsScuccess value)? sportsScuccess,
    TResult Function(courtsFailure value)? courtsFailure,
    TResult Function(courtsScuccess value)? courtsScuccess,
    TResult Function(timesFailure value)? timesFailure,
    TResult Function(timesSuccess value)? timesSuccess,
    required TResult orElse(),
  }) {
    if (sportsScuccess != null) {
      return sportsScuccess(this);
    }
    return orElse();
  }
}

abstract class sportsScuccess implements MatchReservationState {
  const factory sportsScuccess({final List<SportEntity> sports}) =
      _$sportsScuccessImpl;

  List<SportEntity> get sports;
  @JsonKey(ignore: true)
  _$$sportsScuccessImplCopyWith<_$sportsScuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$courtsFailureImplCopyWith<$Res> {
  factory _$$courtsFailureImplCopyWith(
          _$courtsFailureImpl value, $Res Function(_$courtsFailureImpl) then) =
      __$$courtsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$courtsFailureImplCopyWithImpl<$Res>
    extends _$MatchReservationStateCopyWithImpl<$Res, _$courtsFailureImpl>
    implements _$$courtsFailureImplCopyWith<$Res> {
  __$$courtsFailureImplCopyWithImpl(
      _$courtsFailureImpl _value, $Res Function(_$courtsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$courtsFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$courtsFailureImpl implements courtsFailure {
  const _$courtsFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'MatchReservationState.courtsFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$courtsFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$courtsFailureImplCopyWith<_$courtsFailureImpl> get copyWith =>
      __$$courtsFailureImplCopyWithImpl<_$courtsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? failure) sportsFailure,
    required TResult Function(List<SportEntity> sports) sportsScuccess,
    required TResult Function(Failure? failure) courtsFailure,
    required TResult Function(List<SportStadiumEntity> stadiums) courtsScuccess,
    required TResult Function(Failure? failure) timesFailure,
    required TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)
        timesSuccess,
  }) {
    return courtsFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? failure)? sportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsScuccess,
    TResult? Function(Failure? failure)? courtsFailure,
    TResult? Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult? Function(Failure? failure)? timesFailure,
    TResult? Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
  }) {
    return courtsFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? failure)? sportsFailure,
    TResult Function(List<SportEntity> sports)? sportsScuccess,
    TResult Function(Failure? failure)? courtsFailure,
    TResult Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult Function(Failure? failure)? timesFailure,
    TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
    required TResult orElse(),
  }) {
    if (courtsFailure != null) {
      return courtsFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(sportsFailure value) sportsFailure,
    required TResult Function(sportsScuccess value) sportsScuccess,
    required TResult Function(courtsFailure value) courtsFailure,
    required TResult Function(courtsScuccess value) courtsScuccess,
    required TResult Function(timesFailure value) timesFailure,
    required TResult Function(timesSuccess value) timesSuccess,
  }) {
    return courtsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(sportsFailure value)? sportsFailure,
    TResult? Function(sportsScuccess value)? sportsScuccess,
    TResult? Function(courtsFailure value)? courtsFailure,
    TResult? Function(courtsScuccess value)? courtsScuccess,
    TResult? Function(timesFailure value)? timesFailure,
    TResult? Function(timesSuccess value)? timesSuccess,
  }) {
    return courtsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(sportsFailure value)? sportsFailure,
    TResult Function(sportsScuccess value)? sportsScuccess,
    TResult Function(courtsFailure value)? courtsFailure,
    TResult Function(courtsScuccess value)? courtsScuccess,
    TResult Function(timesFailure value)? timesFailure,
    TResult Function(timesSuccess value)? timesSuccess,
    required TResult orElse(),
  }) {
    if (courtsFailure != null) {
      return courtsFailure(this);
    }
    return orElse();
  }
}

abstract class courtsFailure implements MatchReservationState {
  const factory courtsFailure({final Failure? failure}) = _$courtsFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$courtsFailureImplCopyWith<_$courtsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$courtsScuccessImplCopyWith<$Res> {
  factory _$$courtsScuccessImplCopyWith(_$courtsScuccessImpl value,
          $Res Function(_$courtsScuccessImpl) then) =
      __$$courtsScuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SportStadiumEntity> stadiums});
}

/// @nodoc
class __$$courtsScuccessImplCopyWithImpl<$Res>
    extends _$MatchReservationStateCopyWithImpl<$Res, _$courtsScuccessImpl>
    implements _$$courtsScuccessImplCopyWith<$Res> {
  __$$courtsScuccessImplCopyWithImpl(
      _$courtsScuccessImpl _value, $Res Function(_$courtsScuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadiums = null,
  }) {
    return _then(_$courtsScuccessImpl(
      stadiums: null == stadiums
          ? _value._stadiums
          : stadiums // ignore: cast_nullable_to_non_nullable
              as List<SportStadiumEntity>,
    ));
  }
}

/// @nodoc

class _$courtsScuccessImpl implements courtsScuccess {
  const _$courtsScuccessImpl(
      {final List<SportStadiumEntity> stadiums = const []})
      : _stadiums = stadiums;

  final List<SportStadiumEntity> _stadiums;
  @override
  @JsonKey()
  List<SportStadiumEntity> get stadiums {
    if (_stadiums is EqualUnmodifiableListView) return _stadiums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stadiums);
  }

  @override
  String toString() {
    return 'MatchReservationState.courtsScuccess(stadiums: $stadiums)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$courtsScuccessImpl &&
            const DeepCollectionEquality().equals(other._stadiums, _stadiums));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stadiums));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$courtsScuccessImplCopyWith<_$courtsScuccessImpl> get copyWith =>
      __$$courtsScuccessImplCopyWithImpl<_$courtsScuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? failure) sportsFailure,
    required TResult Function(List<SportEntity> sports) sportsScuccess,
    required TResult Function(Failure? failure) courtsFailure,
    required TResult Function(List<SportStadiumEntity> stadiums) courtsScuccess,
    required TResult Function(Failure? failure) timesFailure,
    required TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)
        timesSuccess,
  }) {
    return courtsScuccess(stadiums);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? failure)? sportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsScuccess,
    TResult? Function(Failure? failure)? courtsFailure,
    TResult? Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult? Function(Failure? failure)? timesFailure,
    TResult? Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
  }) {
    return courtsScuccess?.call(stadiums);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? failure)? sportsFailure,
    TResult Function(List<SportEntity> sports)? sportsScuccess,
    TResult Function(Failure? failure)? courtsFailure,
    TResult Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult Function(Failure? failure)? timesFailure,
    TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
    required TResult orElse(),
  }) {
    if (courtsScuccess != null) {
      return courtsScuccess(stadiums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(sportsFailure value) sportsFailure,
    required TResult Function(sportsScuccess value) sportsScuccess,
    required TResult Function(courtsFailure value) courtsFailure,
    required TResult Function(courtsScuccess value) courtsScuccess,
    required TResult Function(timesFailure value) timesFailure,
    required TResult Function(timesSuccess value) timesSuccess,
  }) {
    return courtsScuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(sportsFailure value)? sportsFailure,
    TResult? Function(sportsScuccess value)? sportsScuccess,
    TResult? Function(courtsFailure value)? courtsFailure,
    TResult? Function(courtsScuccess value)? courtsScuccess,
    TResult? Function(timesFailure value)? timesFailure,
    TResult? Function(timesSuccess value)? timesSuccess,
  }) {
    return courtsScuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(sportsFailure value)? sportsFailure,
    TResult Function(sportsScuccess value)? sportsScuccess,
    TResult Function(courtsFailure value)? courtsFailure,
    TResult Function(courtsScuccess value)? courtsScuccess,
    TResult Function(timesFailure value)? timesFailure,
    TResult Function(timesSuccess value)? timesSuccess,
    required TResult orElse(),
  }) {
    if (courtsScuccess != null) {
      return courtsScuccess(this);
    }
    return orElse();
  }
}

abstract class courtsScuccess implements MatchReservationState {
  const factory courtsScuccess({final List<SportStadiumEntity> stadiums}) =
      _$courtsScuccessImpl;

  List<SportStadiumEntity> get stadiums;
  @JsonKey(ignore: true)
  _$$courtsScuccessImplCopyWith<_$courtsScuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$timesFailureImplCopyWith<$Res> {
  factory _$$timesFailureImplCopyWith(
          _$timesFailureImpl value, $Res Function(_$timesFailureImpl) then) =
      __$$timesFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$timesFailureImplCopyWithImpl<$Res>
    extends _$MatchReservationStateCopyWithImpl<$Res, _$timesFailureImpl>
    implements _$$timesFailureImplCopyWith<$Res> {
  __$$timesFailureImplCopyWithImpl(
      _$timesFailureImpl _value, $Res Function(_$timesFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$timesFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$timesFailureImpl implements timesFailure {
  const _$timesFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'MatchReservationState.timesFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$timesFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$timesFailureImplCopyWith<_$timesFailureImpl> get copyWith =>
      __$$timesFailureImplCopyWithImpl<_$timesFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? failure) sportsFailure,
    required TResult Function(List<SportEntity> sports) sportsScuccess,
    required TResult Function(Failure? failure) courtsFailure,
    required TResult Function(List<SportStadiumEntity> stadiums) courtsScuccess,
    required TResult Function(Failure? failure) timesFailure,
    required TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)
        timesSuccess,
  }) {
    return timesFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? failure)? sportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsScuccess,
    TResult? Function(Failure? failure)? courtsFailure,
    TResult? Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult? Function(Failure? failure)? timesFailure,
    TResult? Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
  }) {
    return timesFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? failure)? sportsFailure,
    TResult Function(List<SportEntity> sports)? sportsScuccess,
    TResult Function(Failure? failure)? courtsFailure,
    TResult Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult Function(Failure? failure)? timesFailure,
    TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
    required TResult orElse(),
  }) {
    if (timesFailure != null) {
      return timesFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(sportsFailure value) sportsFailure,
    required TResult Function(sportsScuccess value) sportsScuccess,
    required TResult Function(courtsFailure value) courtsFailure,
    required TResult Function(courtsScuccess value) courtsScuccess,
    required TResult Function(timesFailure value) timesFailure,
    required TResult Function(timesSuccess value) timesSuccess,
  }) {
    return timesFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(sportsFailure value)? sportsFailure,
    TResult? Function(sportsScuccess value)? sportsScuccess,
    TResult? Function(courtsFailure value)? courtsFailure,
    TResult? Function(courtsScuccess value)? courtsScuccess,
    TResult? Function(timesFailure value)? timesFailure,
    TResult? Function(timesSuccess value)? timesSuccess,
  }) {
    return timesFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(sportsFailure value)? sportsFailure,
    TResult Function(sportsScuccess value)? sportsScuccess,
    TResult Function(courtsFailure value)? courtsFailure,
    TResult Function(courtsScuccess value)? courtsScuccess,
    TResult Function(timesFailure value)? timesFailure,
    TResult Function(timesSuccess value)? timesSuccess,
    required TResult orElse(),
  }) {
    if (timesFailure != null) {
      return timesFailure(this);
    }
    return orElse();
  }
}

abstract class timesFailure implements MatchReservationState {
  const factory timesFailure({final Failure? failure}) = _$timesFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$timesFailureImplCopyWith<_$timesFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$timesSuccessImplCopyWith<$Res> {
  factory _$$timesSuccessImplCopyWith(
          _$timesSuccessImpl value, $Res Function(_$timesSuccessImpl) then) =
      __$$timesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReservationEntity> reservations, List<String> openTimes});
}

/// @nodoc
class __$$timesSuccessImplCopyWithImpl<$Res>
    extends _$MatchReservationStateCopyWithImpl<$Res, _$timesSuccessImpl>
    implements _$$timesSuccessImplCopyWith<$Res> {
  __$$timesSuccessImplCopyWithImpl(
      _$timesSuccessImpl _value, $Res Function(_$timesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservations = null,
    Object? openTimes = null,
  }) {
    return _then(_$timesSuccessImpl(
      reservations: null == reservations
          ? _value._reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<ReservationEntity>,
      openTimes: null == openTimes
          ? _value._openTimes
          : openTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$timesSuccessImpl implements timesSuccess {
  const _$timesSuccessImpl(
      {final List<ReservationEntity> reservations = const [],
      final List<String> openTimes = const []})
      : _reservations = reservations,
        _openTimes = openTimes;

  final List<ReservationEntity> _reservations;
  @override
  @JsonKey()
  List<ReservationEntity> get reservations {
    if (_reservations is EqualUnmodifiableListView) return _reservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservations);
  }

  final List<String> _openTimes;
  @override
  @JsonKey()
  List<String> get openTimes {
    if (_openTimes is EqualUnmodifiableListView) return _openTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openTimes);
  }

  @override
  String toString() {
    return 'MatchReservationState.timesSuccess(reservations: $reservations, openTimes: $openTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$timesSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._reservations, _reservations) &&
            const DeepCollectionEquality()
                .equals(other._openTimes, _openTimes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_reservations),
      const DeepCollectionEquality().hash(_openTimes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$timesSuccessImplCopyWith<_$timesSuccessImpl> get copyWith =>
      __$$timesSuccessImplCopyWithImpl<_$timesSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? failure) sportsFailure,
    required TResult Function(List<SportEntity> sports) sportsScuccess,
    required TResult Function(Failure? failure) courtsFailure,
    required TResult Function(List<SportStadiumEntity> stadiums) courtsScuccess,
    required TResult Function(Failure? failure) timesFailure,
    required TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)
        timesSuccess,
  }) {
    return timesSuccess(reservations, openTimes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? failure)? sportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsScuccess,
    TResult? Function(Failure? failure)? courtsFailure,
    TResult? Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult? Function(Failure? failure)? timesFailure,
    TResult? Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
  }) {
    return timesSuccess?.call(reservations, openTimes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? failure)? sportsFailure,
    TResult Function(List<SportEntity> sports)? sportsScuccess,
    TResult Function(Failure? failure)? courtsFailure,
    TResult Function(List<SportStadiumEntity> stadiums)? courtsScuccess,
    TResult Function(Failure? failure)? timesFailure,
    TResult Function(
            List<ReservationEntity> reservations, List<String> openTimes)?
        timesSuccess,
    required TResult orElse(),
  }) {
    if (timesSuccess != null) {
      return timesSuccess(reservations, openTimes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(sportsFailure value) sportsFailure,
    required TResult Function(sportsScuccess value) sportsScuccess,
    required TResult Function(courtsFailure value) courtsFailure,
    required TResult Function(courtsScuccess value) courtsScuccess,
    required TResult Function(timesFailure value) timesFailure,
    required TResult Function(timesSuccess value) timesSuccess,
  }) {
    return timesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(sportsFailure value)? sportsFailure,
    TResult? Function(sportsScuccess value)? sportsScuccess,
    TResult? Function(courtsFailure value)? courtsFailure,
    TResult? Function(courtsScuccess value)? courtsScuccess,
    TResult? Function(timesFailure value)? timesFailure,
    TResult? Function(timesSuccess value)? timesSuccess,
  }) {
    return timesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(sportsFailure value)? sportsFailure,
    TResult Function(sportsScuccess value)? sportsScuccess,
    TResult Function(courtsFailure value)? courtsFailure,
    TResult Function(courtsScuccess value)? courtsScuccess,
    TResult Function(timesFailure value)? timesFailure,
    TResult Function(timesSuccess value)? timesSuccess,
    required TResult orElse(),
  }) {
    if (timesSuccess != null) {
      return timesSuccess(this);
    }
    return orElse();
  }
}

abstract class timesSuccess implements MatchReservationState {
  const factory timesSuccess(
      {final List<ReservationEntity> reservations,
      final List<String> openTimes}) = _$timesSuccessImpl;

  List<ReservationEntity> get reservations;
  List<String> get openTimes;
  @JsonKey(ignore: true)
  _$$timesSuccessImplCopyWith<_$timesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
