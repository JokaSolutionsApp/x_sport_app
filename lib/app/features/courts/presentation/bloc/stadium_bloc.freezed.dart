// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stadium_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StadiumEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StadiumPrams params) getNearByStadiums,
    required TResult Function(StadiumPrams params) getFriendsStadiums,
    required TResult Function(int StadiumId) getAboutStadium,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StadiumPrams params)? getNearByStadiums,
    TResult? Function(StadiumPrams params)? getFriendsStadiums,
    TResult? Function(int StadiumId)? getAboutStadium,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StadiumPrams params)? getNearByStadiums,
    TResult Function(StadiumPrams params)? getFriendsStadiums,
    TResult Function(int StadiumId)? getAboutStadium,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNearByStadiumsEvent value) getNearByStadiums,
    required TResult Function(_GetFriendsStadiumsEvent value)
        getFriendsStadiums,
    required TResult Function(_GetAboutStadiumEvent value) getAboutStadium,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNearByStadiumsEvent value)? getNearByStadiums,
    TResult? Function(_GetFriendsStadiumsEvent value)? getFriendsStadiums,
    TResult? Function(_GetAboutStadiumEvent value)? getAboutStadium,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNearByStadiumsEvent value)? getNearByStadiums,
    TResult Function(_GetFriendsStadiumsEvent value)? getFriendsStadiums,
    TResult Function(_GetAboutStadiumEvent value)? getAboutStadium,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StadiumEventCopyWith<$Res> {
  factory $StadiumEventCopyWith(
          StadiumEvent value, $Res Function(StadiumEvent) then) =
      _$StadiumEventCopyWithImpl<$Res, StadiumEvent>;
}

/// @nodoc
class _$StadiumEventCopyWithImpl<$Res, $Val extends StadiumEvent>
    implements $StadiumEventCopyWith<$Res> {
  _$StadiumEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNearByStadiumsEventImplCopyWith<$Res> {
  factory _$$GetNearByStadiumsEventImplCopyWith(
          _$GetNearByStadiumsEventImpl value,
          $Res Function(_$GetNearByStadiumsEventImpl) then) =
      __$$GetNearByStadiumsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StadiumPrams params});
}

/// @nodoc
class __$$GetNearByStadiumsEventImplCopyWithImpl<$Res>
    extends _$StadiumEventCopyWithImpl<$Res, _$GetNearByStadiumsEventImpl>
    implements _$$GetNearByStadiumsEventImplCopyWith<$Res> {
  __$$GetNearByStadiumsEventImplCopyWithImpl(
      _$GetNearByStadiumsEventImpl _value,
      $Res Function(_$GetNearByStadiumsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$GetNearByStadiumsEventImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as StadiumPrams,
    ));
  }
}

/// @nodoc

class _$GetNearByStadiumsEventImpl implements _GetNearByStadiumsEvent {
  const _$GetNearByStadiumsEventImpl({required this.params});

  @override
  final StadiumPrams params;

  @override
  String toString() {
    return 'StadiumEvent.getNearByStadiums(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNearByStadiumsEventImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNearByStadiumsEventImplCopyWith<_$GetNearByStadiumsEventImpl>
      get copyWith => __$$GetNearByStadiumsEventImplCopyWithImpl<
          _$GetNearByStadiumsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StadiumPrams params) getNearByStadiums,
    required TResult Function(StadiumPrams params) getFriendsStadiums,
    required TResult Function(int StadiumId) getAboutStadium,
  }) {
    return getNearByStadiums(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StadiumPrams params)? getNearByStadiums,
    TResult? Function(StadiumPrams params)? getFriendsStadiums,
    TResult? Function(int StadiumId)? getAboutStadium,
  }) {
    return getNearByStadiums?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StadiumPrams params)? getNearByStadiums,
    TResult Function(StadiumPrams params)? getFriendsStadiums,
    TResult Function(int StadiumId)? getAboutStadium,
    required TResult orElse(),
  }) {
    if (getNearByStadiums != null) {
      return getNearByStadiums(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNearByStadiumsEvent value) getNearByStadiums,
    required TResult Function(_GetFriendsStadiumsEvent value)
        getFriendsStadiums,
    required TResult Function(_GetAboutStadiumEvent value) getAboutStadium,
  }) {
    return getNearByStadiums(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNearByStadiumsEvent value)? getNearByStadiums,
    TResult? Function(_GetFriendsStadiumsEvent value)? getFriendsStadiums,
    TResult? Function(_GetAboutStadiumEvent value)? getAboutStadium,
  }) {
    return getNearByStadiums?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNearByStadiumsEvent value)? getNearByStadiums,
    TResult Function(_GetFriendsStadiumsEvent value)? getFriendsStadiums,
    TResult Function(_GetAboutStadiumEvent value)? getAboutStadium,
    required TResult orElse(),
  }) {
    if (getNearByStadiums != null) {
      return getNearByStadiums(this);
    }
    return orElse();
  }
}

abstract class _GetNearByStadiumsEvent implements StadiumEvent {
  const factory _GetNearByStadiumsEvent({required final StadiumPrams params}) =
      _$GetNearByStadiumsEventImpl;

  StadiumPrams get params;
  @JsonKey(ignore: true)
  _$$GetNearByStadiumsEventImplCopyWith<_$GetNearByStadiumsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFriendsStadiumsEventImplCopyWith<$Res> {
  factory _$$GetFriendsStadiumsEventImplCopyWith(
          _$GetFriendsStadiumsEventImpl value,
          $Res Function(_$GetFriendsStadiumsEventImpl) then) =
      __$$GetFriendsStadiumsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StadiumPrams params});
}

/// @nodoc
class __$$GetFriendsStadiumsEventImplCopyWithImpl<$Res>
    extends _$StadiumEventCopyWithImpl<$Res, _$GetFriendsStadiumsEventImpl>
    implements _$$GetFriendsStadiumsEventImplCopyWith<$Res> {
  __$$GetFriendsStadiumsEventImplCopyWithImpl(
      _$GetFriendsStadiumsEventImpl _value,
      $Res Function(_$GetFriendsStadiumsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$GetFriendsStadiumsEventImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as StadiumPrams,
    ));
  }
}

/// @nodoc

class _$GetFriendsStadiumsEventImpl implements _GetFriendsStadiumsEvent {
  const _$GetFriendsStadiumsEventImpl({required this.params});

  @override
  final StadiumPrams params;

  @override
  String toString() {
    return 'StadiumEvent.getFriendsStadiums(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFriendsStadiumsEventImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFriendsStadiumsEventImplCopyWith<_$GetFriendsStadiumsEventImpl>
      get copyWith => __$$GetFriendsStadiumsEventImplCopyWithImpl<
          _$GetFriendsStadiumsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StadiumPrams params) getNearByStadiums,
    required TResult Function(StadiumPrams params) getFriendsStadiums,
    required TResult Function(int StadiumId) getAboutStadium,
  }) {
    return getFriendsStadiums(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StadiumPrams params)? getNearByStadiums,
    TResult? Function(StadiumPrams params)? getFriendsStadiums,
    TResult? Function(int StadiumId)? getAboutStadium,
  }) {
    return getFriendsStadiums?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StadiumPrams params)? getNearByStadiums,
    TResult Function(StadiumPrams params)? getFriendsStadiums,
    TResult Function(int StadiumId)? getAboutStadium,
    required TResult orElse(),
  }) {
    if (getFriendsStadiums != null) {
      return getFriendsStadiums(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNearByStadiumsEvent value) getNearByStadiums,
    required TResult Function(_GetFriendsStadiumsEvent value)
        getFriendsStadiums,
    required TResult Function(_GetAboutStadiumEvent value) getAboutStadium,
  }) {
    return getFriendsStadiums(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNearByStadiumsEvent value)? getNearByStadiums,
    TResult? Function(_GetFriendsStadiumsEvent value)? getFriendsStadiums,
    TResult? Function(_GetAboutStadiumEvent value)? getAboutStadium,
  }) {
    return getFriendsStadiums?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNearByStadiumsEvent value)? getNearByStadiums,
    TResult Function(_GetFriendsStadiumsEvent value)? getFriendsStadiums,
    TResult Function(_GetAboutStadiumEvent value)? getAboutStadium,
    required TResult orElse(),
  }) {
    if (getFriendsStadiums != null) {
      return getFriendsStadiums(this);
    }
    return orElse();
  }
}

abstract class _GetFriendsStadiumsEvent implements StadiumEvent {
  const factory _GetFriendsStadiumsEvent({required final StadiumPrams params}) =
      _$GetFriendsStadiumsEventImpl;

  StadiumPrams get params;
  @JsonKey(ignore: true)
  _$$GetFriendsStadiumsEventImplCopyWith<_$GetFriendsStadiumsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAboutStadiumEventImplCopyWith<$Res> {
  factory _$$GetAboutStadiumEventImplCopyWith(_$GetAboutStadiumEventImpl value,
          $Res Function(_$GetAboutStadiumEventImpl) then) =
      __$$GetAboutStadiumEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int StadiumId});
}

/// @nodoc
class __$$GetAboutStadiumEventImplCopyWithImpl<$Res>
    extends _$StadiumEventCopyWithImpl<$Res, _$GetAboutStadiumEventImpl>
    implements _$$GetAboutStadiumEventImplCopyWith<$Res> {
  __$$GetAboutStadiumEventImplCopyWithImpl(_$GetAboutStadiumEventImpl _value,
      $Res Function(_$GetAboutStadiumEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? StadiumId = null,
  }) {
    return _then(_$GetAboutStadiumEventImpl(
      StadiumId: null == StadiumId
          ? _value.StadiumId
          : StadiumId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAboutStadiumEventImpl implements _GetAboutStadiumEvent {
  const _$GetAboutStadiumEventImpl({required this.StadiumId});

  @override
  final int StadiumId;

  @override
  String toString() {
    return 'StadiumEvent.getAboutStadium(StadiumId: $StadiumId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAboutStadiumEventImpl &&
            (identical(other.StadiumId, StadiumId) ||
                other.StadiumId == StadiumId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, StadiumId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAboutStadiumEventImplCopyWith<_$GetAboutStadiumEventImpl>
      get copyWith =>
          __$$GetAboutStadiumEventImplCopyWithImpl<_$GetAboutStadiumEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StadiumPrams params) getNearByStadiums,
    required TResult Function(StadiumPrams params) getFriendsStadiums,
    required TResult Function(int StadiumId) getAboutStadium,
  }) {
    return getAboutStadium(StadiumId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StadiumPrams params)? getNearByStadiums,
    TResult? Function(StadiumPrams params)? getFriendsStadiums,
    TResult? Function(int StadiumId)? getAboutStadium,
  }) {
    return getAboutStadium?.call(StadiumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StadiumPrams params)? getNearByStadiums,
    TResult Function(StadiumPrams params)? getFriendsStadiums,
    TResult Function(int StadiumId)? getAboutStadium,
    required TResult orElse(),
  }) {
    if (getAboutStadium != null) {
      return getAboutStadium(StadiumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNearByStadiumsEvent value) getNearByStadiums,
    required TResult Function(_GetFriendsStadiumsEvent value)
        getFriendsStadiums,
    required TResult Function(_GetAboutStadiumEvent value) getAboutStadium,
  }) {
    return getAboutStadium(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNearByStadiumsEvent value)? getNearByStadiums,
    TResult? Function(_GetFriendsStadiumsEvent value)? getFriendsStadiums,
    TResult? Function(_GetAboutStadiumEvent value)? getAboutStadium,
  }) {
    return getAboutStadium?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNearByStadiumsEvent value)? getNearByStadiums,
    TResult Function(_GetFriendsStadiumsEvent value)? getFriendsStadiums,
    TResult Function(_GetAboutStadiumEvent value)? getAboutStadium,
    required TResult orElse(),
  }) {
    if (getAboutStadium != null) {
      return getAboutStadium(this);
    }
    return orElse();
  }
}

abstract class _GetAboutStadiumEvent implements StadiumEvent {
  const factory _GetAboutStadiumEvent({required final int StadiumId}) =
      _$GetAboutStadiumEventImpl;

  int get StadiumId;
  @JsonKey(ignore: true)
  _$$GetAboutStadiumEventImplCopyWith<_$GetAboutStadiumEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StadiumState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getNearByStadiumsLoading,
    required TResult Function(Failure? failure) getNearByStadiumsFailure,
    required TResult Function(List<StadiumEntity> nearByStadiums)
        nearByStadiumsFetched,
    required TResult Function() getFriendsStadiumsLoading,
    required TResult Function(Failure? failure) getFriendsStadiumsFailure,
    required TResult Function(List<StadiumEntity> friendsStadiums)
        friendsStadiumsFetched,
    required TResult Function() getAboutStadiumLoading,
    required TResult Function(Failure? failure) getAboutStadiumFailure,
    required TResult Function(AboutStadiumEntity? aboutStadium)
        aboutStadiumFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getNearByStadiumsLoading,
    TResult? Function(Failure? failure)? getNearByStadiumsFailure,
    TResult? Function(List<StadiumEntity> nearByStadiums)?
        nearByStadiumsFetched,
    TResult? Function()? getFriendsStadiumsLoading,
    TResult? Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult? Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult? Function()? getAboutStadiumLoading,
    TResult? Function(Failure? failure)? getAboutStadiumFailure,
    TResult? Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getNearByStadiumsLoading,
    TResult Function(Failure? failure)? getNearByStadiumsFailure,
    TResult Function(List<StadiumEntity> nearByStadiums)? nearByStadiumsFetched,
    TResult Function()? getFriendsStadiumsLoading,
    TResult Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult Function()? getAboutStadiumLoading,
    TResult Function(Failure? failure)? getAboutStadiumFailure,
    TResult Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetNearByStadiumsLoading value)
        getNearByStadiumsLoading,
    required TResult Function(_GetNearByStadiumsFailure value)
        getNearByStadiumsFailure,
    required TResult Function(_NearByStadiumsFetched value)
        nearByStadiumsFetched,
    required TResult Function(_GetFriendsStadiumsLoading value)
        getFriendsStadiumsLoading,
    required TResult Function(_GetFriendsStadiumsFailure value)
        getFriendsStadiumsFailure,
    required TResult Function(_FriendsStadiumsFetched value)
        friendsStadiumsFetched,
    required TResult Function(_GetAboutStadiumLoading value)
        getAboutStadiumLoading,
    required TResult Function(_GetAboutStadiumFailure value)
        getAboutStadiumFailure,
    required TResult Function(_AboutStadiumFetched value) aboutStadiumFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetNearByStadiumsLoading value)?
        getNearByStadiumsLoading,
    TResult? Function(_GetNearByStadiumsFailure value)?
        getNearByStadiumsFailure,
    TResult? Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult? Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult? Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult? Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult? Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult? Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult? Function(_AboutStadiumFetched value)? aboutStadiumFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetNearByStadiumsLoading value)? getNearByStadiumsLoading,
    TResult Function(_GetNearByStadiumsFailure value)? getNearByStadiumsFailure,
    TResult Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult Function(_AboutStadiumFetched value)? aboutStadiumFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StadiumStateCopyWith<$Res> {
  factory $StadiumStateCopyWith(
          StadiumState value, $Res Function(StadiumState) then) =
      _$StadiumStateCopyWithImpl<$Res, StadiumState>;
}

/// @nodoc
class _$StadiumStateCopyWithImpl<$Res, $Val extends StadiumState>
    implements $StadiumStateCopyWith<$Res> {
  _$StadiumStateCopyWithImpl(this._value, this._then);

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
    extends _$StadiumStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'StadiumState.initial()';
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
    required TResult Function() getNearByStadiumsLoading,
    required TResult Function(Failure? failure) getNearByStadiumsFailure,
    required TResult Function(List<StadiumEntity> nearByStadiums)
        nearByStadiumsFetched,
    required TResult Function() getFriendsStadiumsLoading,
    required TResult Function(Failure? failure) getFriendsStadiumsFailure,
    required TResult Function(List<StadiumEntity> friendsStadiums)
        friendsStadiumsFetched,
    required TResult Function() getAboutStadiumLoading,
    required TResult Function(Failure? failure) getAboutStadiumFailure,
    required TResult Function(AboutStadiumEntity? aboutStadium)
        aboutStadiumFetched,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getNearByStadiumsLoading,
    TResult? Function(Failure? failure)? getNearByStadiumsFailure,
    TResult? Function(List<StadiumEntity> nearByStadiums)?
        nearByStadiumsFetched,
    TResult? Function()? getFriendsStadiumsLoading,
    TResult? Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult? Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult? Function()? getAboutStadiumLoading,
    TResult? Function(Failure? failure)? getAboutStadiumFailure,
    TResult? Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getNearByStadiumsLoading,
    TResult Function(Failure? failure)? getNearByStadiumsFailure,
    TResult Function(List<StadiumEntity> nearByStadiums)? nearByStadiumsFetched,
    TResult Function()? getFriendsStadiumsLoading,
    TResult Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult Function()? getAboutStadiumLoading,
    TResult Function(Failure? failure)? getAboutStadiumFailure,
    TResult Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
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
    required TResult Function(_GetNearByStadiumsLoading value)
        getNearByStadiumsLoading,
    required TResult Function(_GetNearByStadiumsFailure value)
        getNearByStadiumsFailure,
    required TResult Function(_NearByStadiumsFetched value)
        nearByStadiumsFetched,
    required TResult Function(_GetFriendsStadiumsLoading value)
        getFriendsStadiumsLoading,
    required TResult Function(_GetFriendsStadiumsFailure value)
        getFriendsStadiumsFailure,
    required TResult Function(_FriendsStadiumsFetched value)
        friendsStadiumsFetched,
    required TResult Function(_GetAboutStadiumLoading value)
        getAboutStadiumLoading,
    required TResult Function(_GetAboutStadiumFailure value)
        getAboutStadiumFailure,
    required TResult Function(_AboutStadiumFetched value) aboutStadiumFetched,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetNearByStadiumsLoading value)?
        getNearByStadiumsLoading,
    TResult? Function(_GetNearByStadiumsFailure value)?
        getNearByStadiumsFailure,
    TResult? Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult? Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult? Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult? Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult? Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult? Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult? Function(_AboutStadiumFetched value)? aboutStadiumFetched,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetNearByStadiumsLoading value)? getNearByStadiumsLoading,
    TResult Function(_GetNearByStadiumsFailure value)? getNearByStadiumsFailure,
    TResult Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult Function(_AboutStadiumFetched value)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StadiumState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetNearByStadiumsLoadingImplCopyWith<$Res> {
  factory _$$GetNearByStadiumsLoadingImplCopyWith(
          _$GetNearByStadiumsLoadingImpl value,
          $Res Function(_$GetNearByStadiumsLoadingImpl) then) =
      __$$GetNearByStadiumsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNearByStadiumsLoadingImplCopyWithImpl<$Res>
    extends _$StadiumStateCopyWithImpl<$Res, _$GetNearByStadiumsLoadingImpl>
    implements _$$GetNearByStadiumsLoadingImplCopyWith<$Res> {
  __$$GetNearByStadiumsLoadingImplCopyWithImpl(
      _$GetNearByStadiumsLoadingImpl _value,
      $Res Function(_$GetNearByStadiumsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNearByStadiumsLoadingImpl implements _GetNearByStadiumsLoading {
  const _$GetNearByStadiumsLoadingImpl();

  @override
  String toString() {
    return 'StadiumState.getNearByStadiumsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNearByStadiumsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getNearByStadiumsLoading,
    required TResult Function(Failure? failure) getNearByStadiumsFailure,
    required TResult Function(List<StadiumEntity> nearByStadiums)
        nearByStadiumsFetched,
    required TResult Function() getFriendsStadiumsLoading,
    required TResult Function(Failure? failure) getFriendsStadiumsFailure,
    required TResult Function(List<StadiumEntity> friendsStadiums)
        friendsStadiumsFetched,
    required TResult Function() getAboutStadiumLoading,
    required TResult Function(Failure? failure) getAboutStadiumFailure,
    required TResult Function(AboutStadiumEntity? aboutStadium)
        aboutStadiumFetched,
  }) {
    return getNearByStadiumsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getNearByStadiumsLoading,
    TResult? Function(Failure? failure)? getNearByStadiumsFailure,
    TResult? Function(List<StadiumEntity> nearByStadiums)?
        nearByStadiumsFetched,
    TResult? Function()? getFriendsStadiumsLoading,
    TResult? Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult? Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult? Function()? getAboutStadiumLoading,
    TResult? Function(Failure? failure)? getAboutStadiumFailure,
    TResult? Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
  }) {
    return getNearByStadiumsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getNearByStadiumsLoading,
    TResult Function(Failure? failure)? getNearByStadiumsFailure,
    TResult Function(List<StadiumEntity> nearByStadiums)? nearByStadiumsFetched,
    TResult Function()? getFriendsStadiumsLoading,
    TResult Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult Function()? getAboutStadiumLoading,
    TResult Function(Failure? failure)? getAboutStadiumFailure,
    TResult Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (getNearByStadiumsLoading != null) {
      return getNearByStadiumsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetNearByStadiumsLoading value)
        getNearByStadiumsLoading,
    required TResult Function(_GetNearByStadiumsFailure value)
        getNearByStadiumsFailure,
    required TResult Function(_NearByStadiumsFetched value)
        nearByStadiumsFetched,
    required TResult Function(_GetFriendsStadiumsLoading value)
        getFriendsStadiumsLoading,
    required TResult Function(_GetFriendsStadiumsFailure value)
        getFriendsStadiumsFailure,
    required TResult Function(_FriendsStadiumsFetched value)
        friendsStadiumsFetched,
    required TResult Function(_GetAboutStadiumLoading value)
        getAboutStadiumLoading,
    required TResult Function(_GetAboutStadiumFailure value)
        getAboutStadiumFailure,
    required TResult Function(_AboutStadiumFetched value) aboutStadiumFetched,
  }) {
    return getNearByStadiumsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetNearByStadiumsLoading value)?
        getNearByStadiumsLoading,
    TResult? Function(_GetNearByStadiumsFailure value)?
        getNearByStadiumsFailure,
    TResult? Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult? Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult? Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult? Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult? Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult? Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult? Function(_AboutStadiumFetched value)? aboutStadiumFetched,
  }) {
    return getNearByStadiumsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetNearByStadiumsLoading value)? getNearByStadiumsLoading,
    TResult Function(_GetNearByStadiumsFailure value)? getNearByStadiumsFailure,
    TResult Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult Function(_AboutStadiumFetched value)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (getNearByStadiumsLoading != null) {
      return getNearByStadiumsLoading(this);
    }
    return orElse();
  }
}

abstract class _GetNearByStadiumsLoading implements StadiumState {
  const factory _GetNearByStadiumsLoading() = _$GetNearByStadiumsLoadingImpl;
}

/// @nodoc
abstract class _$$GetNearByStadiumsFailureImplCopyWith<$Res> {
  factory _$$GetNearByStadiumsFailureImplCopyWith(
          _$GetNearByStadiumsFailureImpl value,
          $Res Function(_$GetNearByStadiumsFailureImpl) then) =
      __$$GetNearByStadiumsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$GetNearByStadiumsFailureImplCopyWithImpl<$Res>
    extends _$StadiumStateCopyWithImpl<$Res, _$GetNearByStadiumsFailureImpl>
    implements _$$GetNearByStadiumsFailureImplCopyWith<$Res> {
  __$$GetNearByStadiumsFailureImplCopyWithImpl(
      _$GetNearByStadiumsFailureImpl _value,
      $Res Function(_$GetNearByStadiumsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$GetNearByStadiumsFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$GetNearByStadiumsFailureImpl implements _GetNearByStadiumsFailure {
  const _$GetNearByStadiumsFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'StadiumState.getNearByStadiumsFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNearByStadiumsFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNearByStadiumsFailureImplCopyWith<_$GetNearByStadiumsFailureImpl>
      get copyWith => __$$GetNearByStadiumsFailureImplCopyWithImpl<
          _$GetNearByStadiumsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getNearByStadiumsLoading,
    required TResult Function(Failure? failure) getNearByStadiumsFailure,
    required TResult Function(List<StadiumEntity> nearByStadiums)
        nearByStadiumsFetched,
    required TResult Function() getFriendsStadiumsLoading,
    required TResult Function(Failure? failure) getFriendsStadiumsFailure,
    required TResult Function(List<StadiumEntity> friendsStadiums)
        friendsStadiumsFetched,
    required TResult Function() getAboutStadiumLoading,
    required TResult Function(Failure? failure) getAboutStadiumFailure,
    required TResult Function(AboutStadiumEntity? aboutStadium)
        aboutStadiumFetched,
  }) {
    return getNearByStadiumsFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getNearByStadiumsLoading,
    TResult? Function(Failure? failure)? getNearByStadiumsFailure,
    TResult? Function(List<StadiumEntity> nearByStadiums)?
        nearByStadiumsFetched,
    TResult? Function()? getFriendsStadiumsLoading,
    TResult? Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult? Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult? Function()? getAboutStadiumLoading,
    TResult? Function(Failure? failure)? getAboutStadiumFailure,
    TResult? Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
  }) {
    return getNearByStadiumsFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getNearByStadiumsLoading,
    TResult Function(Failure? failure)? getNearByStadiumsFailure,
    TResult Function(List<StadiumEntity> nearByStadiums)? nearByStadiumsFetched,
    TResult Function()? getFriendsStadiumsLoading,
    TResult Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult Function()? getAboutStadiumLoading,
    TResult Function(Failure? failure)? getAboutStadiumFailure,
    TResult Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (getNearByStadiumsFailure != null) {
      return getNearByStadiumsFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetNearByStadiumsLoading value)
        getNearByStadiumsLoading,
    required TResult Function(_GetNearByStadiumsFailure value)
        getNearByStadiumsFailure,
    required TResult Function(_NearByStadiumsFetched value)
        nearByStadiumsFetched,
    required TResult Function(_GetFriendsStadiumsLoading value)
        getFriendsStadiumsLoading,
    required TResult Function(_GetFriendsStadiumsFailure value)
        getFriendsStadiumsFailure,
    required TResult Function(_FriendsStadiumsFetched value)
        friendsStadiumsFetched,
    required TResult Function(_GetAboutStadiumLoading value)
        getAboutStadiumLoading,
    required TResult Function(_GetAboutStadiumFailure value)
        getAboutStadiumFailure,
    required TResult Function(_AboutStadiumFetched value) aboutStadiumFetched,
  }) {
    return getNearByStadiumsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetNearByStadiumsLoading value)?
        getNearByStadiumsLoading,
    TResult? Function(_GetNearByStadiumsFailure value)?
        getNearByStadiumsFailure,
    TResult? Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult? Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult? Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult? Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult? Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult? Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult? Function(_AboutStadiumFetched value)? aboutStadiumFetched,
  }) {
    return getNearByStadiumsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetNearByStadiumsLoading value)? getNearByStadiumsLoading,
    TResult Function(_GetNearByStadiumsFailure value)? getNearByStadiumsFailure,
    TResult Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult Function(_AboutStadiumFetched value)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (getNearByStadiumsFailure != null) {
      return getNearByStadiumsFailure(this);
    }
    return orElse();
  }
}

abstract class _GetNearByStadiumsFailure implements StadiumState {
  const factory _GetNearByStadiumsFailure({final Failure? failure}) =
      _$GetNearByStadiumsFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$GetNearByStadiumsFailureImplCopyWith<_$GetNearByStadiumsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NearByStadiumsFetchedImplCopyWith<$Res> {
  factory _$$NearByStadiumsFetchedImplCopyWith(
          _$NearByStadiumsFetchedImpl value,
          $Res Function(_$NearByStadiumsFetchedImpl) then) =
      __$$NearByStadiumsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<StadiumEntity> nearByStadiums});
}

/// @nodoc
class __$$NearByStadiumsFetchedImplCopyWithImpl<$Res>
    extends _$StadiumStateCopyWithImpl<$Res, _$NearByStadiumsFetchedImpl>
    implements _$$NearByStadiumsFetchedImplCopyWith<$Res> {
  __$$NearByStadiumsFetchedImplCopyWithImpl(_$NearByStadiumsFetchedImpl _value,
      $Res Function(_$NearByStadiumsFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nearByStadiums = null,
  }) {
    return _then(_$NearByStadiumsFetchedImpl(
      nearByStadiums: null == nearByStadiums
          ? _value._nearByStadiums
          : nearByStadiums // ignore: cast_nullable_to_non_nullable
              as List<StadiumEntity>,
    ));
  }
}

/// @nodoc

class _$NearByStadiumsFetchedImpl implements _NearByStadiumsFetched {
  const _$NearByStadiumsFetchedImpl(
      {final List<StadiumEntity> nearByStadiums = const []})
      : _nearByStadiums = nearByStadiums;

  final List<StadiumEntity> _nearByStadiums;
  @override
  @JsonKey()
  List<StadiumEntity> get nearByStadiums {
    if (_nearByStadiums is EqualUnmodifiableListView) return _nearByStadiums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nearByStadiums);
  }

  @override
  String toString() {
    return 'StadiumState.nearByStadiumsFetched(nearByStadiums: $nearByStadiums)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NearByStadiumsFetchedImpl &&
            const DeepCollectionEquality()
                .equals(other._nearByStadiums, _nearByStadiums));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nearByStadiums));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NearByStadiumsFetchedImplCopyWith<_$NearByStadiumsFetchedImpl>
      get copyWith => __$$NearByStadiumsFetchedImplCopyWithImpl<
          _$NearByStadiumsFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getNearByStadiumsLoading,
    required TResult Function(Failure? failure) getNearByStadiumsFailure,
    required TResult Function(List<StadiumEntity> nearByStadiums)
        nearByStadiumsFetched,
    required TResult Function() getFriendsStadiumsLoading,
    required TResult Function(Failure? failure) getFriendsStadiumsFailure,
    required TResult Function(List<StadiumEntity> friendsStadiums)
        friendsStadiumsFetched,
    required TResult Function() getAboutStadiumLoading,
    required TResult Function(Failure? failure) getAboutStadiumFailure,
    required TResult Function(AboutStadiumEntity? aboutStadium)
        aboutStadiumFetched,
  }) {
    return nearByStadiumsFetched(nearByStadiums);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getNearByStadiumsLoading,
    TResult? Function(Failure? failure)? getNearByStadiumsFailure,
    TResult? Function(List<StadiumEntity> nearByStadiums)?
        nearByStadiumsFetched,
    TResult? Function()? getFriendsStadiumsLoading,
    TResult? Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult? Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult? Function()? getAboutStadiumLoading,
    TResult? Function(Failure? failure)? getAboutStadiumFailure,
    TResult? Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
  }) {
    return nearByStadiumsFetched?.call(nearByStadiums);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getNearByStadiumsLoading,
    TResult Function(Failure? failure)? getNearByStadiumsFailure,
    TResult Function(List<StadiumEntity> nearByStadiums)? nearByStadiumsFetched,
    TResult Function()? getFriendsStadiumsLoading,
    TResult Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult Function()? getAboutStadiumLoading,
    TResult Function(Failure? failure)? getAboutStadiumFailure,
    TResult Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (nearByStadiumsFetched != null) {
      return nearByStadiumsFetched(nearByStadiums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetNearByStadiumsLoading value)
        getNearByStadiumsLoading,
    required TResult Function(_GetNearByStadiumsFailure value)
        getNearByStadiumsFailure,
    required TResult Function(_NearByStadiumsFetched value)
        nearByStadiumsFetched,
    required TResult Function(_GetFriendsStadiumsLoading value)
        getFriendsStadiumsLoading,
    required TResult Function(_GetFriendsStadiumsFailure value)
        getFriendsStadiumsFailure,
    required TResult Function(_FriendsStadiumsFetched value)
        friendsStadiumsFetched,
    required TResult Function(_GetAboutStadiumLoading value)
        getAboutStadiumLoading,
    required TResult Function(_GetAboutStadiumFailure value)
        getAboutStadiumFailure,
    required TResult Function(_AboutStadiumFetched value) aboutStadiumFetched,
  }) {
    return nearByStadiumsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetNearByStadiumsLoading value)?
        getNearByStadiumsLoading,
    TResult? Function(_GetNearByStadiumsFailure value)?
        getNearByStadiumsFailure,
    TResult? Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult? Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult? Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult? Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult? Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult? Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult? Function(_AboutStadiumFetched value)? aboutStadiumFetched,
  }) {
    return nearByStadiumsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetNearByStadiumsLoading value)? getNearByStadiumsLoading,
    TResult Function(_GetNearByStadiumsFailure value)? getNearByStadiumsFailure,
    TResult Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult Function(_AboutStadiumFetched value)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (nearByStadiumsFetched != null) {
      return nearByStadiumsFetched(this);
    }
    return orElse();
  }
}

abstract class _NearByStadiumsFetched implements StadiumState {
  const factory _NearByStadiumsFetched(
      {final List<StadiumEntity> nearByStadiums}) = _$NearByStadiumsFetchedImpl;

  List<StadiumEntity> get nearByStadiums;
  @JsonKey(ignore: true)
  _$$NearByStadiumsFetchedImplCopyWith<_$NearByStadiumsFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFriendsStadiumsLoadingImplCopyWith<$Res> {
  factory _$$GetFriendsStadiumsLoadingImplCopyWith(
          _$GetFriendsStadiumsLoadingImpl value,
          $Res Function(_$GetFriendsStadiumsLoadingImpl) then) =
      __$$GetFriendsStadiumsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFriendsStadiumsLoadingImplCopyWithImpl<$Res>
    extends _$StadiumStateCopyWithImpl<$Res, _$GetFriendsStadiumsLoadingImpl>
    implements _$$GetFriendsStadiumsLoadingImplCopyWith<$Res> {
  __$$GetFriendsStadiumsLoadingImplCopyWithImpl(
      _$GetFriendsStadiumsLoadingImpl _value,
      $Res Function(_$GetFriendsStadiumsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFriendsStadiumsLoadingImpl implements _GetFriendsStadiumsLoading {
  const _$GetFriendsStadiumsLoadingImpl();

  @override
  String toString() {
    return 'StadiumState.getFriendsStadiumsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFriendsStadiumsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getNearByStadiumsLoading,
    required TResult Function(Failure? failure) getNearByStadiumsFailure,
    required TResult Function(List<StadiumEntity> nearByStadiums)
        nearByStadiumsFetched,
    required TResult Function() getFriendsStadiumsLoading,
    required TResult Function(Failure? failure) getFriendsStadiumsFailure,
    required TResult Function(List<StadiumEntity> friendsStadiums)
        friendsStadiumsFetched,
    required TResult Function() getAboutStadiumLoading,
    required TResult Function(Failure? failure) getAboutStadiumFailure,
    required TResult Function(AboutStadiumEntity? aboutStadium)
        aboutStadiumFetched,
  }) {
    return getFriendsStadiumsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getNearByStadiumsLoading,
    TResult? Function(Failure? failure)? getNearByStadiumsFailure,
    TResult? Function(List<StadiumEntity> nearByStadiums)?
        nearByStadiumsFetched,
    TResult? Function()? getFriendsStadiumsLoading,
    TResult? Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult? Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult? Function()? getAboutStadiumLoading,
    TResult? Function(Failure? failure)? getAboutStadiumFailure,
    TResult? Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
  }) {
    return getFriendsStadiumsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getNearByStadiumsLoading,
    TResult Function(Failure? failure)? getNearByStadiumsFailure,
    TResult Function(List<StadiumEntity> nearByStadiums)? nearByStadiumsFetched,
    TResult Function()? getFriendsStadiumsLoading,
    TResult Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult Function()? getAboutStadiumLoading,
    TResult Function(Failure? failure)? getAboutStadiumFailure,
    TResult Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (getFriendsStadiumsLoading != null) {
      return getFriendsStadiumsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetNearByStadiumsLoading value)
        getNearByStadiumsLoading,
    required TResult Function(_GetNearByStadiumsFailure value)
        getNearByStadiumsFailure,
    required TResult Function(_NearByStadiumsFetched value)
        nearByStadiumsFetched,
    required TResult Function(_GetFriendsStadiumsLoading value)
        getFriendsStadiumsLoading,
    required TResult Function(_GetFriendsStadiumsFailure value)
        getFriendsStadiumsFailure,
    required TResult Function(_FriendsStadiumsFetched value)
        friendsStadiumsFetched,
    required TResult Function(_GetAboutStadiumLoading value)
        getAboutStadiumLoading,
    required TResult Function(_GetAboutStadiumFailure value)
        getAboutStadiumFailure,
    required TResult Function(_AboutStadiumFetched value) aboutStadiumFetched,
  }) {
    return getFriendsStadiumsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetNearByStadiumsLoading value)?
        getNearByStadiumsLoading,
    TResult? Function(_GetNearByStadiumsFailure value)?
        getNearByStadiumsFailure,
    TResult? Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult? Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult? Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult? Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult? Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult? Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult? Function(_AboutStadiumFetched value)? aboutStadiumFetched,
  }) {
    return getFriendsStadiumsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetNearByStadiumsLoading value)? getNearByStadiumsLoading,
    TResult Function(_GetNearByStadiumsFailure value)? getNearByStadiumsFailure,
    TResult Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult Function(_AboutStadiumFetched value)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (getFriendsStadiumsLoading != null) {
      return getFriendsStadiumsLoading(this);
    }
    return orElse();
  }
}

abstract class _GetFriendsStadiumsLoading implements StadiumState {
  const factory _GetFriendsStadiumsLoading() = _$GetFriendsStadiumsLoadingImpl;
}

/// @nodoc
abstract class _$$GetFriendsStadiumsFailureImplCopyWith<$Res> {
  factory _$$GetFriendsStadiumsFailureImplCopyWith(
          _$GetFriendsStadiumsFailureImpl value,
          $Res Function(_$GetFriendsStadiumsFailureImpl) then) =
      __$$GetFriendsStadiumsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$GetFriendsStadiumsFailureImplCopyWithImpl<$Res>
    extends _$StadiumStateCopyWithImpl<$Res, _$GetFriendsStadiumsFailureImpl>
    implements _$$GetFriendsStadiumsFailureImplCopyWith<$Res> {
  __$$GetFriendsStadiumsFailureImplCopyWithImpl(
      _$GetFriendsStadiumsFailureImpl _value,
      $Res Function(_$GetFriendsStadiumsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$GetFriendsStadiumsFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$GetFriendsStadiumsFailureImpl implements _GetFriendsStadiumsFailure {
  const _$GetFriendsStadiumsFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'StadiumState.getFriendsStadiumsFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFriendsStadiumsFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFriendsStadiumsFailureImplCopyWith<_$GetFriendsStadiumsFailureImpl>
      get copyWith => __$$GetFriendsStadiumsFailureImplCopyWithImpl<
          _$GetFriendsStadiumsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getNearByStadiumsLoading,
    required TResult Function(Failure? failure) getNearByStadiumsFailure,
    required TResult Function(List<StadiumEntity> nearByStadiums)
        nearByStadiumsFetched,
    required TResult Function() getFriendsStadiumsLoading,
    required TResult Function(Failure? failure) getFriendsStadiumsFailure,
    required TResult Function(List<StadiumEntity> friendsStadiums)
        friendsStadiumsFetched,
    required TResult Function() getAboutStadiumLoading,
    required TResult Function(Failure? failure) getAboutStadiumFailure,
    required TResult Function(AboutStadiumEntity? aboutStadium)
        aboutStadiumFetched,
  }) {
    return getFriendsStadiumsFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getNearByStadiumsLoading,
    TResult? Function(Failure? failure)? getNearByStadiumsFailure,
    TResult? Function(List<StadiumEntity> nearByStadiums)?
        nearByStadiumsFetched,
    TResult? Function()? getFriendsStadiumsLoading,
    TResult? Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult? Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult? Function()? getAboutStadiumLoading,
    TResult? Function(Failure? failure)? getAboutStadiumFailure,
    TResult? Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
  }) {
    return getFriendsStadiumsFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getNearByStadiumsLoading,
    TResult Function(Failure? failure)? getNearByStadiumsFailure,
    TResult Function(List<StadiumEntity> nearByStadiums)? nearByStadiumsFetched,
    TResult Function()? getFriendsStadiumsLoading,
    TResult Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult Function()? getAboutStadiumLoading,
    TResult Function(Failure? failure)? getAboutStadiumFailure,
    TResult Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (getFriendsStadiumsFailure != null) {
      return getFriendsStadiumsFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetNearByStadiumsLoading value)
        getNearByStadiumsLoading,
    required TResult Function(_GetNearByStadiumsFailure value)
        getNearByStadiumsFailure,
    required TResult Function(_NearByStadiumsFetched value)
        nearByStadiumsFetched,
    required TResult Function(_GetFriendsStadiumsLoading value)
        getFriendsStadiumsLoading,
    required TResult Function(_GetFriendsStadiumsFailure value)
        getFriendsStadiumsFailure,
    required TResult Function(_FriendsStadiumsFetched value)
        friendsStadiumsFetched,
    required TResult Function(_GetAboutStadiumLoading value)
        getAboutStadiumLoading,
    required TResult Function(_GetAboutStadiumFailure value)
        getAboutStadiumFailure,
    required TResult Function(_AboutStadiumFetched value) aboutStadiumFetched,
  }) {
    return getFriendsStadiumsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetNearByStadiumsLoading value)?
        getNearByStadiumsLoading,
    TResult? Function(_GetNearByStadiumsFailure value)?
        getNearByStadiumsFailure,
    TResult? Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult? Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult? Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult? Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult? Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult? Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult? Function(_AboutStadiumFetched value)? aboutStadiumFetched,
  }) {
    return getFriendsStadiumsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetNearByStadiumsLoading value)? getNearByStadiumsLoading,
    TResult Function(_GetNearByStadiumsFailure value)? getNearByStadiumsFailure,
    TResult Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult Function(_AboutStadiumFetched value)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (getFriendsStadiumsFailure != null) {
      return getFriendsStadiumsFailure(this);
    }
    return orElse();
  }
}

abstract class _GetFriendsStadiumsFailure implements StadiumState {
  const factory _GetFriendsStadiumsFailure({final Failure? failure}) =
      _$GetFriendsStadiumsFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$GetFriendsStadiumsFailureImplCopyWith<_$GetFriendsStadiumsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FriendsStadiumsFetchedImplCopyWith<$Res> {
  factory _$$FriendsStadiumsFetchedImplCopyWith(
          _$FriendsStadiumsFetchedImpl value,
          $Res Function(_$FriendsStadiumsFetchedImpl) then) =
      __$$FriendsStadiumsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<StadiumEntity> friendsStadiums});
}

/// @nodoc
class __$$FriendsStadiumsFetchedImplCopyWithImpl<$Res>
    extends _$StadiumStateCopyWithImpl<$Res, _$FriendsStadiumsFetchedImpl>
    implements _$$FriendsStadiumsFetchedImplCopyWith<$Res> {
  __$$FriendsStadiumsFetchedImplCopyWithImpl(
      _$FriendsStadiumsFetchedImpl _value,
      $Res Function(_$FriendsStadiumsFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friendsStadiums = null,
  }) {
    return _then(_$FriendsStadiumsFetchedImpl(
      friendsStadiums: null == friendsStadiums
          ? _value._friendsStadiums
          : friendsStadiums // ignore: cast_nullable_to_non_nullable
              as List<StadiumEntity>,
    ));
  }
}

/// @nodoc

class _$FriendsStadiumsFetchedImpl implements _FriendsStadiumsFetched {
  const _$FriendsStadiumsFetchedImpl(
      {final List<StadiumEntity> friendsStadiums = const []})
      : _friendsStadiums = friendsStadiums;

  final List<StadiumEntity> _friendsStadiums;
  @override
  @JsonKey()
  List<StadiumEntity> get friendsStadiums {
    if (_friendsStadiums is EqualUnmodifiableListView) return _friendsStadiums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friendsStadiums);
  }

  @override
  String toString() {
    return 'StadiumState.friendsStadiumsFetched(friendsStadiums: $friendsStadiums)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendsStadiumsFetchedImpl &&
            const DeepCollectionEquality()
                .equals(other._friendsStadiums, _friendsStadiums));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_friendsStadiums));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendsStadiumsFetchedImplCopyWith<_$FriendsStadiumsFetchedImpl>
      get copyWith => __$$FriendsStadiumsFetchedImplCopyWithImpl<
          _$FriendsStadiumsFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getNearByStadiumsLoading,
    required TResult Function(Failure? failure) getNearByStadiumsFailure,
    required TResult Function(List<StadiumEntity> nearByStadiums)
        nearByStadiumsFetched,
    required TResult Function() getFriendsStadiumsLoading,
    required TResult Function(Failure? failure) getFriendsStadiumsFailure,
    required TResult Function(List<StadiumEntity> friendsStadiums)
        friendsStadiumsFetched,
    required TResult Function() getAboutStadiumLoading,
    required TResult Function(Failure? failure) getAboutStadiumFailure,
    required TResult Function(AboutStadiumEntity? aboutStadium)
        aboutStadiumFetched,
  }) {
    return friendsStadiumsFetched(friendsStadiums);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getNearByStadiumsLoading,
    TResult? Function(Failure? failure)? getNearByStadiumsFailure,
    TResult? Function(List<StadiumEntity> nearByStadiums)?
        nearByStadiumsFetched,
    TResult? Function()? getFriendsStadiumsLoading,
    TResult? Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult? Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult? Function()? getAboutStadiumLoading,
    TResult? Function(Failure? failure)? getAboutStadiumFailure,
    TResult? Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
  }) {
    return friendsStadiumsFetched?.call(friendsStadiums);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getNearByStadiumsLoading,
    TResult Function(Failure? failure)? getNearByStadiumsFailure,
    TResult Function(List<StadiumEntity> nearByStadiums)? nearByStadiumsFetched,
    TResult Function()? getFriendsStadiumsLoading,
    TResult Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult Function()? getAboutStadiumLoading,
    TResult Function(Failure? failure)? getAboutStadiumFailure,
    TResult Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (friendsStadiumsFetched != null) {
      return friendsStadiumsFetched(friendsStadiums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetNearByStadiumsLoading value)
        getNearByStadiumsLoading,
    required TResult Function(_GetNearByStadiumsFailure value)
        getNearByStadiumsFailure,
    required TResult Function(_NearByStadiumsFetched value)
        nearByStadiumsFetched,
    required TResult Function(_GetFriendsStadiumsLoading value)
        getFriendsStadiumsLoading,
    required TResult Function(_GetFriendsStadiumsFailure value)
        getFriendsStadiumsFailure,
    required TResult Function(_FriendsStadiumsFetched value)
        friendsStadiumsFetched,
    required TResult Function(_GetAboutStadiumLoading value)
        getAboutStadiumLoading,
    required TResult Function(_GetAboutStadiumFailure value)
        getAboutStadiumFailure,
    required TResult Function(_AboutStadiumFetched value) aboutStadiumFetched,
  }) {
    return friendsStadiumsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetNearByStadiumsLoading value)?
        getNearByStadiumsLoading,
    TResult? Function(_GetNearByStadiumsFailure value)?
        getNearByStadiumsFailure,
    TResult? Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult? Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult? Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult? Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult? Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult? Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult? Function(_AboutStadiumFetched value)? aboutStadiumFetched,
  }) {
    return friendsStadiumsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetNearByStadiumsLoading value)? getNearByStadiumsLoading,
    TResult Function(_GetNearByStadiumsFailure value)? getNearByStadiumsFailure,
    TResult Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult Function(_AboutStadiumFetched value)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (friendsStadiumsFetched != null) {
      return friendsStadiumsFetched(this);
    }
    return orElse();
  }
}

abstract class _FriendsStadiumsFetched implements StadiumState {
  const factory _FriendsStadiumsFetched(
          {final List<StadiumEntity> friendsStadiums}) =
      _$FriendsStadiumsFetchedImpl;

  List<StadiumEntity> get friendsStadiums;
  @JsonKey(ignore: true)
  _$$FriendsStadiumsFetchedImplCopyWith<_$FriendsStadiumsFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAboutStadiumLoadingImplCopyWith<$Res> {
  factory _$$GetAboutStadiumLoadingImplCopyWith(
          _$GetAboutStadiumLoadingImpl value,
          $Res Function(_$GetAboutStadiumLoadingImpl) then) =
      __$$GetAboutStadiumLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAboutStadiumLoadingImplCopyWithImpl<$Res>
    extends _$StadiumStateCopyWithImpl<$Res, _$GetAboutStadiumLoadingImpl>
    implements _$$GetAboutStadiumLoadingImplCopyWith<$Res> {
  __$$GetAboutStadiumLoadingImplCopyWithImpl(
      _$GetAboutStadiumLoadingImpl _value,
      $Res Function(_$GetAboutStadiumLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAboutStadiumLoadingImpl implements _GetAboutStadiumLoading {
  const _$GetAboutStadiumLoadingImpl();

  @override
  String toString() {
    return 'StadiumState.getAboutStadiumLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAboutStadiumLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getNearByStadiumsLoading,
    required TResult Function(Failure? failure) getNearByStadiumsFailure,
    required TResult Function(List<StadiumEntity> nearByStadiums)
        nearByStadiumsFetched,
    required TResult Function() getFriendsStadiumsLoading,
    required TResult Function(Failure? failure) getFriendsStadiumsFailure,
    required TResult Function(List<StadiumEntity> friendsStadiums)
        friendsStadiumsFetched,
    required TResult Function() getAboutStadiumLoading,
    required TResult Function(Failure? failure) getAboutStadiumFailure,
    required TResult Function(AboutStadiumEntity? aboutStadium)
        aboutStadiumFetched,
  }) {
    return getAboutStadiumLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getNearByStadiumsLoading,
    TResult? Function(Failure? failure)? getNearByStadiumsFailure,
    TResult? Function(List<StadiumEntity> nearByStadiums)?
        nearByStadiumsFetched,
    TResult? Function()? getFriendsStadiumsLoading,
    TResult? Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult? Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult? Function()? getAboutStadiumLoading,
    TResult? Function(Failure? failure)? getAboutStadiumFailure,
    TResult? Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
  }) {
    return getAboutStadiumLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getNearByStadiumsLoading,
    TResult Function(Failure? failure)? getNearByStadiumsFailure,
    TResult Function(List<StadiumEntity> nearByStadiums)? nearByStadiumsFetched,
    TResult Function()? getFriendsStadiumsLoading,
    TResult Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult Function()? getAboutStadiumLoading,
    TResult Function(Failure? failure)? getAboutStadiumFailure,
    TResult Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (getAboutStadiumLoading != null) {
      return getAboutStadiumLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetNearByStadiumsLoading value)
        getNearByStadiumsLoading,
    required TResult Function(_GetNearByStadiumsFailure value)
        getNearByStadiumsFailure,
    required TResult Function(_NearByStadiumsFetched value)
        nearByStadiumsFetched,
    required TResult Function(_GetFriendsStadiumsLoading value)
        getFriendsStadiumsLoading,
    required TResult Function(_GetFriendsStadiumsFailure value)
        getFriendsStadiumsFailure,
    required TResult Function(_FriendsStadiumsFetched value)
        friendsStadiumsFetched,
    required TResult Function(_GetAboutStadiumLoading value)
        getAboutStadiumLoading,
    required TResult Function(_GetAboutStadiumFailure value)
        getAboutStadiumFailure,
    required TResult Function(_AboutStadiumFetched value) aboutStadiumFetched,
  }) {
    return getAboutStadiumLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetNearByStadiumsLoading value)?
        getNearByStadiumsLoading,
    TResult? Function(_GetNearByStadiumsFailure value)?
        getNearByStadiumsFailure,
    TResult? Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult? Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult? Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult? Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult? Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult? Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult? Function(_AboutStadiumFetched value)? aboutStadiumFetched,
  }) {
    return getAboutStadiumLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetNearByStadiumsLoading value)? getNearByStadiumsLoading,
    TResult Function(_GetNearByStadiumsFailure value)? getNearByStadiumsFailure,
    TResult Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult Function(_AboutStadiumFetched value)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (getAboutStadiumLoading != null) {
      return getAboutStadiumLoading(this);
    }
    return orElse();
  }
}

abstract class _GetAboutStadiumLoading implements StadiumState {
  const factory _GetAboutStadiumLoading() = _$GetAboutStadiumLoadingImpl;
}

/// @nodoc
abstract class _$$GetAboutStadiumFailureImplCopyWith<$Res> {
  factory _$$GetAboutStadiumFailureImplCopyWith(
          _$GetAboutStadiumFailureImpl value,
          $Res Function(_$GetAboutStadiumFailureImpl) then) =
      __$$GetAboutStadiumFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$GetAboutStadiumFailureImplCopyWithImpl<$Res>
    extends _$StadiumStateCopyWithImpl<$Res, _$GetAboutStadiumFailureImpl>
    implements _$$GetAboutStadiumFailureImplCopyWith<$Res> {
  __$$GetAboutStadiumFailureImplCopyWithImpl(
      _$GetAboutStadiumFailureImpl _value,
      $Res Function(_$GetAboutStadiumFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$GetAboutStadiumFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$GetAboutStadiumFailureImpl implements _GetAboutStadiumFailure {
  const _$GetAboutStadiumFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'StadiumState.getAboutStadiumFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAboutStadiumFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAboutStadiumFailureImplCopyWith<_$GetAboutStadiumFailureImpl>
      get copyWith => __$$GetAboutStadiumFailureImplCopyWithImpl<
          _$GetAboutStadiumFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getNearByStadiumsLoading,
    required TResult Function(Failure? failure) getNearByStadiumsFailure,
    required TResult Function(List<StadiumEntity> nearByStadiums)
        nearByStadiumsFetched,
    required TResult Function() getFriendsStadiumsLoading,
    required TResult Function(Failure? failure) getFriendsStadiumsFailure,
    required TResult Function(List<StadiumEntity> friendsStadiums)
        friendsStadiumsFetched,
    required TResult Function() getAboutStadiumLoading,
    required TResult Function(Failure? failure) getAboutStadiumFailure,
    required TResult Function(AboutStadiumEntity? aboutStadium)
        aboutStadiumFetched,
  }) {
    return getAboutStadiumFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getNearByStadiumsLoading,
    TResult? Function(Failure? failure)? getNearByStadiumsFailure,
    TResult? Function(List<StadiumEntity> nearByStadiums)?
        nearByStadiumsFetched,
    TResult? Function()? getFriendsStadiumsLoading,
    TResult? Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult? Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult? Function()? getAboutStadiumLoading,
    TResult? Function(Failure? failure)? getAboutStadiumFailure,
    TResult? Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
  }) {
    return getAboutStadiumFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getNearByStadiumsLoading,
    TResult Function(Failure? failure)? getNearByStadiumsFailure,
    TResult Function(List<StadiumEntity> nearByStadiums)? nearByStadiumsFetched,
    TResult Function()? getFriendsStadiumsLoading,
    TResult Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult Function()? getAboutStadiumLoading,
    TResult Function(Failure? failure)? getAboutStadiumFailure,
    TResult Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (getAboutStadiumFailure != null) {
      return getAboutStadiumFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetNearByStadiumsLoading value)
        getNearByStadiumsLoading,
    required TResult Function(_GetNearByStadiumsFailure value)
        getNearByStadiumsFailure,
    required TResult Function(_NearByStadiumsFetched value)
        nearByStadiumsFetched,
    required TResult Function(_GetFriendsStadiumsLoading value)
        getFriendsStadiumsLoading,
    required TResult Function(_GetFriendsStadiumsFailure value)
        getFriendsStadiumsFailure,
    required TResult Function(_FriendsStadiumsFetched value)
        friendsStadiumsFetched,
    required TResult Function(_GetAboutStadiumLoading value)
        getAboutStadiumLoading,
    required TResult Function(_GetAboutStadiumFailure value)
        getAboutStadiumFailure,
    required TResult Function(_AboutStadiumFetched value) aboutStadiumFetched,
  }) {
    return getAboutStadiumFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetNearByStadiumsLoading value)?
        getNearByStadiumsLoading,
    TResult? Function(_GetNearByStadiumsFailure value)?
        getNearByStadiumsFailure,
    TResult? Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult? Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult? Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult? Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult? Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult? Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult? Function(_AboutStadiumFetched value)? aboutStadiumFetched,
  }) {
    return getAboutStadiumFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetNearByStadiumsLoading value)? getNearByStadiumsLoading,
    TResult Function(_GetNearByStadiumsFailure value)? getNearByStadiumsFailure,
    TResult Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult Function(_AboutStadiumFetched value)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (getAboutStadiumFailure != null) {
      return getAboutStadiumFailure(this);
    }
    return orElse();
  }
}

abstract class _GetAboutStadiumFailure implements StadiumState {
  const factory _GetAboutStadiumFailure({final Failure? failure}) =
      _$GetAboutStadiumFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$GetAboutStadiumFailureImplCopyWith<_$GetAboutStadiumFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AboutStadiumFetchedImplCopyWith<$Res> {
  factory _$$AboutStadiumFetchedImplCopyWith(_$AboutStadiumFetchedImpl value,
          $Res Function(_$AboutStadiumFetchedImpl) then) =
      __$$AboutStadiumFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AboutStadiumEntity? aboutStadium});
}

/// @nodoc
class __$$AboutStadiumFetchedImplCopyWithImpl<$Res>
    extends _$StadiumStateCopyWithImpl<$Res, _$AboutStadiumFetchedImpl>
    implements _$$AboutStadiumFetchedImplCopyWith<$Res> {
  __$$AboutStadiumFetchedImplCopyWithImpl(_$AboutStadiumFetchedImpl _value,
      $Res Function(_$AboutStadiumFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutStadium = freezed,
  }) {
    return _then(_$AboutStadiumFetchedImpl(
      aboutStadium: freezed == aboutStadium
          ? _value.aboutStadium
          : aboutStadium // ignore: cast_nullable_to_non_nullable
              as AboutStadiumEntity?,
    ));
  }
}

/// @nodoc

class _$AboutStadiumFetchedImpl implements _AboutStadiumFetched {
  const _$AboutStadiumFetchedImpl({this.aboutStadium = null});

  @override
  @JsonKey()
  final AboutStadiumEntity? aboutStadium;

  @override
  String toString() {
    return 'StadiumState.aboutStadiumFetched(aboutStadium: $aboutStadium)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutStadiumFetchedImpl &&
            (identical(other.aboutStadium, aboutStadium) ||
                other.aboutStadium == aboutStadium));
  }

  @override
  int get hashCode => Object.hash(runtimeType, aboutStadium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutStadiumFetchedImplCopyWith<_$AboutStadiumFetchedImpl> get copyWith =>
      __$$AboutStadiumFetchedImplCopyWithImpl<_$AboutStadiumFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getNearByStadiumsLoading,
    required TResult Function(Failure? failure) getNearByStadiumsFailure,
    required TResult Function(List<StadiumEntity> nearByStadiums)
        nearByStadiumsFetched,
    required TResult Function() getFriendsStadiumsLoading,
    required TResult Function(Failure? failure) getFriendsStadiumsFailure,
    required TResult Function(List<StadiumEntity> friendsStadiums)
        friendsStadiumsFetched,
    required TResult Function() getAboutStadiumLoading,
    required TResult Function(Failure? failure) getAboutStadiumFailure,
    required TResult Function(AboutStadiumEntity? aboutStadium)
        aboutStadiumFetched,
  }) {
    return aboutStadiumFetched(aboutStadium);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getNearByStadiumsLoading,
    TResult? Function(Failure? failure)? getNearByStadiumsFailure,
    TResult? Function(List<StadiumEntity> nearByStadiums)?
        nearByStadiumsFetched,
    TResult? Function()? getFriendsStadiumsLoading,
    TResult? Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult? Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult? Function()? getAboutStadiumLoading,
    TResult? Function(Failure? failure)? getAboutStadiumFailure,
    TResult? Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
  }) {
    return aboutStadiumFetched?.call(aboutStadium);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getNearByStadiumsLoading,
    TResult Function(Failure? failure)? getNearByStadiumsFailure,
    TResult Function(List<StadiumEntity> nearByStadiums)? nearByStadiumsFetched,
    TResult Function()? getFriendsStadiumsLoading,
    TResult Function(Failure? failure)? getFriendsStadiumsFailure,
    TResult Function(List<StadiumEntity> friendsStadiums)?
        friendsStadiumsFetched,
    TResult Function()? getAboutStadiumLoading,
    TResult Function(Failure? failure)? getAboutStadiumFailure,
    TResult Function(AboutStadiumEntity? aboutStadium)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (aboutStadiumFetched != null) {
      return aboutStadiumFetched(aboutStadium);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetNearByStadiumsLoading value)
        getNearByStadiumsLoading,
    required TResult Function(_GetNearByStadiumsFailure value)
        getNearByStadiumsFailure,
    required TResult Function(_NearByStadiumsFetched value)
        nearByStadiumsFetched,
    required TResult Function(_GetFriendsStadiumsLoading value)
        getFriendsStadiumsLoading,
    required TResult Function(_GetFriendsStadiumsFailure value)
        getFriendsStadiumsFailure,
    required TResult Function(_FriendsStadiumsFetched value)
        friendsStadiumsFetched,
    required TResult Function(_GetAboutStadiumLoading value)
        getAboutStadiumLoading,
    required TResult Function(_GetAboutStadiumFailure value)
        getAboutStadiumFailure,
    required TResult Function(_AboutStadiumFetched value) aboutStadiumFetched,
  }) {
    return aboutStadiumFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetNearByStadiumsLoading value)?
        getNearByStadiumsLoading,
    TResult? Function(_GetNearByStadiumsFailure value)?
        getNearByStadiumsFailure,
    TResult? Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult? Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult? Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult? Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult? Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult? Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult? Function(_AboutStadiumFetched value)? aboutStadiumFetched,
  }) {
    return aboutStadiumFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetNearByStadiumsLoading value)? getNearByStadiumsLoading,
    TResult Function(_GetNearByStadiumsFailure value)? getNearByStadiumsFailure,
    TResult Function(_NearByStadiumsFetched value)? nearByStadiumsFetched,
    TResult Function(_GetFriendsStadiumsLoading value)?
        getFriendsStadiumsLoading,
    TResult Function(_GetFriendsStadiumsFailure value)?
        getFriendsStadiumsFailure,
    TResult Function(_FriendsStadiumsFetched value)? friendsStadiumsFetched,
    TResult Function(_GetAboutStadiumLoading value)? getAboutStadiumLoading,
    TResult Function(_GetAboutStadiumFailure value)? getAboutStadiumFailure,
    TResult Function(_AboutStadiumFetched value)? aboutStadiumFetched,
    required TResult orElse(),
  }) {
    if (aboutStadiumFetched != null) {
      return aboutStadiumFetched(this);
    }
    return orElse();
  }
}

abstract class _AboutStadiumFetched implements StadiumState {
  const factory _AboutStadiumFetched({final AboutStadiumEntity? aboutStadium}) =
      _$AboutStadiumFetchedImpl;

  AboutStadiumEntity? get aboutStadium;
  @JsonKey(ignore: true)
  _$$AboutStadiumFetchedImplCopyWith<_$AboutStadiumFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
