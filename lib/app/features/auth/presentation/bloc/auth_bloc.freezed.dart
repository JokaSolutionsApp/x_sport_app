// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
          _$LoginEventImpl value, $Res Function(_$LoginEventImpl) then) =
      __$$LoginEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
      _$LoginEventImpl _value, $Res Function(_$LoginEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginEventImpl implements _LoginEvent {
  const _$LoginEventImpl();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginEvent implements AuthEvent {
  const factory _LoginEvent() = _$LoginEventImpl;
}

/// @nodoc
abstract class _$$RegisterEventImplCopyWith<$Res> {
  factory _$$RegisterEventImplCopyWith(
          _$RegisterEventImpl value, $Res Function(_$RegisterEventImpl) then) =
      __$$RegisterEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterEventImpl>
    implements _$$RegisterEventImplCopyWith<$Res> {
  __$$RegisterEventImplCopyWithImpl(
      _$RegisterEventImpl _value, $Res Function(_$RegisterEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterEventImpl implements _RegisterEvent {
  const _$RegisterEventImpl();

  @override
  String toString() {
    return 'AuthEvent.register()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _RegisterEvent implements AuthEvent {
  const factory _RegisterEvent() = _$RegisterEventImpl;
}

/// @nodoc
abstract class _$$GetUserProfileEventImplCopyWith<$Res> {
  factory _$$GetUserProfileEventImplCopyWith(_$GetUserProfileEventImpl value,
          $Res Function(_$GetUserProfileEventImpl) then) =
      __$$GetUserProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserProfileEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetUserProfileEventImpl>
    implements _$$GetUserProfileEventImplCopyWith<$Res> {
  __$$GetUserProfileEventImplCopyWithImpl(_$GetUserProfileEventImpl _value,
      $Res Function(_$GetUserProfileEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserProfileEventImpl implements _GetUserProfileEvent {
  const _$GetUserProfileEventImpl();

  @override
  String toString() {
    return 'AuthEvent.getUserProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) {
    return getUserProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) {
    return getUserProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (getUserProfile != null) {
      return getUserProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) {
    return getUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) {
    return getUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (getUserProfile != null) {
      return getUserProfile(this);
    }
    return orElse();
  }
}

abstract class _GetUserProfileEvent implements AuthEvent {
  const factory _GetUserProfileEvent() = _$GetUserProfileEventImpl;
}

/// @nodoc
abstract class _$$EditUserProfileEventImplCopyWith<$Res> {
  factory _$$EditUserProfileEventImplCopyWith(_$EditUserProfileEventImpl value,
          $Res Function(_$EditUserProfileEventImpl) then) =
      __$$EditUserProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditUserProfileParams params});
}

/// @nodoc
class __$$EditUserProfileEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EditUserProfileEventImpl>
    implements _$$EditUserProfileEventImplCopyWith<$Res> {
  __$$EditUserProfileEventImplCopyWithImpl(_$EditUserProfileEventImpl _value,
      $Res Function(_$EditUserProfileEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$EditUserProfileEventImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as EditUserProfileParams,
    ));
  }
}

/// @nodoc

class _$EditUserProfileEventImpl implements _EditUserProfileEvent {
  const _$EditUserProfileEventImpl({required this.params});

  @override
  final EditUserProfileParams params;

  @override
  String toString() {
    return 'AuthEvent.editUserProfile(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUserProfileEventImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUserProfileEventImplCopyWith<_$EditUserProfileEventImpl>
      get copyWith =>
          __$$EditUserProfileEventImplCopyWithImpl<_$EditUserProfileEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) {
    return editUserProfile(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) {
    return editUserProfile?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (editUserProfile != null) {
      return editUserProfile(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) {
    return editUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) {
    return editUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (editUserProfile != null) {
      return editUserProfile(this);
    }
    return orElse();
  }
}

abstract class _EditUserProfileEvent implements AuthEvent {
  const factory _EditUserProfileEvent(
          {required final EditUserProfileParams params}) =
      _$EditUserProfileEventImpl;

  EditUserProfileParams get params;
  @JsonKey(ignore: true)
  _$$EditUserProfileEventImplCopyWith<_$EditUserProfileEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditPreferencesEventImplCopyWith<$Res> {
  factory _$$EditPreferencesEventImplCopyWith(_$EditPreferencesEventImpl value,
          $Res Function(_$EditPreferencesEventImpl) then) =
      __$$EditPreferencesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PreferenceValue> params});
}

/// @nodoc
class __$$EditPreferencesEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EditPreferencesEventImpl>
    implements _$$EditPreferencesEventImplCopyWith<$Res> {
  __$$EditPreferencesEventImplCopyWithImpl(_$EditPreferencesEventImpl _value,
      $Res Function(_$EditPreferencesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$EditPreferencesEventImpl(
      params: null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<PreferenceValue>,
    ));
  }
}

/// @nodoc

class _$EditPreferencesEventImpl implements _EditPreferencesEvent {
  const _$EditPreferencesEventImpl(
      {required final List<PreferenceValue> params})
      : _params = params;

  final List<PreferenceValue> _params;
  @override
  List<PreferenceValue> get params {
    if (_params is EqualUnmodifiableListView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  @override
  String toString() {
    return 'AuthEvent.editPreferences(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPreferencesEventImpl &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditPreferencesEventImplCopyWith<_$EditPreferencesEventImpl>
      get copyWith =>
          __$$EditPreferencesEventImplCopyWithImpl<_$EditPreferencesEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) {
    return editPreferences(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) {
    return editPreferences?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (editPreferences != null) {
      return editPreferences(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) {
    return editPreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) {
    return editPreferences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (editPreferences != null) {
      return editPreferences(this);
    }
    return orElse();
  }
}

abstract class _EditPreferencesEvent implements AuthEvent {
  const factory _EditPreferencesEvent(
          {required final List<PreferenceValue> params}) =
      _$EditPreferencesEventImpl;

  List<PreferenceValue> get params;
  @JsonKey(ignore: true)
  _$$EditPreferencesEventImplCopyWith<_$EditPreferencesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckUserLoggedEventImplCopyWith<$Res> {
  factory _$$CheckUserLoggedEventImplCopyWith(_$CheckUserLoggedEventImpl value,
          $Res Function(_$CheckUserLoggedEventImpl) then) =
      __$$CheckUserLoggedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUserLoggedEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckUserLoggedEventImpl>
    implements _$$CheckUserLoggedEventImplCopyWith<$Res> {
  __$$CheckUserLoggedEventImplCopyWithImpl(_$CheckUserLoggedEventImpl _value,
      $Res Function(_$CheckUserLoggedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckUserLoggedEventImpl implements _CheckUserLoggedEvent {
  const _$CheckUserLoggedEventImpl();

  @override
  String toString() {
    return 'AuthEvent.checkUserLogged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUserLoggedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) {
    return checkUserLogged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) {
    return checkUserLogged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (checkUserLogged != null) {
      return checkUserLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) {
    return checkUserLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) {
    return checkUserLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (checkUserLogged != null) {
      return checkUserLogged(this);
    }
    return orElse();
  }
}

abstract class _CheckUserLoggedEvent implements AuthEvent {
  const factory _CheckUserLoggedEvent() = _$CheckUserLoggedEventImpl;
}

/// @nodoc
abstract class _$$ConfirmUserEmailEventImplCopyWith<$Res> {
  factory _$$ConfirmUserEmailEventImplCopyWith(
          _$ConfirmUserEmailEventImpl value,
          $Res Function(_$ConfirmUserEmailEventImpl) then) =
      __$$ConfirmUserEmailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmUserEmailEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ConfirmUserEmailEventImpl>
    implements _$$ConfirmUserEmailEventImplCopyWith<$Res> {
  __$$ConfirmUserEmailEventImplCopyWithImpl(_$ConfirmUserEmailEventImpl _value,
      $Res Function(_$ConfirmUserEmailEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmUserEmailEventImpl implements _ConfirmUserEmailEvent {
  const _$ConfirmUserEmailEventImpl();

  @override
  String toString() {
    return 'AuthEvent.confirmUserEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmUserEmailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) {
    return confirmUserEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) {
    return confirmUserEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (confirmUserEmail != null) {
      return confirmUserEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) {
    return confirmUserEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) {
    return confirmUserEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (confirmUserEmail != null) {
      return confirmUserEmail(this);
    }
    return orElse();
  }
}

abstract class _ConfirmUserEmailEvent implements AuthEvent {
  const factory _ConfirmUserEmailEvent() = _$ConfirmUserEmailEventImpl;
}

/// @nodoc
abstract class _$$ResendConfirmUserEmailEventImplCopyWith<$Res> {
  factory _$$ResendConfirmUserEmailEventImplCopyWith(
          _$ResendConfirmUserEmailEventImpl value,
          $Res Function(_$ResendConfirmUserEmailEventImpl) then) =
      __$$ResendConfirmUserEmailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendConfirmUserEmailEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResendConfirmUserEmailEventImpl>
    implements _$$ResendConfirmUserEmailEventImplCopyWith<$Res> {
  __$$ResendConfirmUserEmailEventImplCopyWithImpl(
      _$ResendConfirmUserEmailEventImpl _value,
      $Res Function(_$ResendConfirmUserEmailEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResendConfirmUserEmailEventImpl
    implements _ResendConfirmUserEmailEvent {
  const _$ResendConfirmUserEmailEventImpl();

  @override
  String toString() {
    return 'AuthEvent.resendconfirmUserEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendConfirmUserEmailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) {
    return resendconfirmUserEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) {
    return resendconfirmUserEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (resendconfirmUserEmail != null) {
      return resendconfirmUserEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) {
    return resendconfirmUserEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) {
    return resendconfirmUserEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (resendconfirmUserEmail != null) {
      return resendconfirmUserEmail(this);
    }
    return orElse();
  }
}

abstract class _ResendConfirmUserEmailEvent implements AuthEvent {
  const factory _ResendConfirmUserEmailEvent() =
      _$ResendConfirmUserEmailEventImpl;
}

/// @nodoc
abstract class _$$GetSportsEventImplCopyWith<$Res> {
  factory _$$GetSportsEventImplCopyWith(_$GetSportsEventImpl value,
          $Res Function(_$GetSportsEventImpl) then) =
      __$$GetSportsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSportsEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetSportsEventImpl>
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
    return 'AuthEvent.getSports()';
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
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) {
    return getSports();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) {
    return getSports?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
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
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) {
    return getSports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) {
    return getSports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (getSports != null) {
      return getSports(this);
    }
    return orElse();
  }
}

abstract class _GetSportsEvent implements AuthEvent {
  const factory _GetSportsEvent() = _$GetSportsEventImpl;
}

/// @nodoc
abstract class _$$CompleteRegistrationEventImplCopyWith<$Res> {
  factory _$$CompleteRegistrationEventImplCopyWith(
          _$CompleteRegistrationEventImpl value,
          $Res Function(_$CompleteRegistrationEventImpl) then) =
      __$$CompleteRegistrationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> imageBytes, String imageType, List<int> selectedSports});
}

/// @nodoc
class __$$CompleteRegistrationEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CompleteRegistrationEventImpl>
    implements _$$CompleteRegistrationEventImplCopyWith<$Res> {
  __$$CompleteRegistrationEventImplCopyWithImpl(
      _$CompleteRegistrationEventImpl _value,
      $Res Function(_$CompleteRegistrationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = null,
    Object? imageType = null,
    Object? selectedSports = null,
  }) {
    return _then(_$CompleteRegistrationEventImpl(
      imageBytes: null == imageBytes
          ? _value._imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSports: null == selectedSports
          ? _value._selectedSports
          : selectedSports // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$CompleteRegistrationEventImpl implements _CompleteRegistrationEvent {
  const _$CompleteRegistrationEventImpl(
      {required final List<int> imageBytes,
      required this.imageType,
      required final List<int> selectedSports})
      : _imageBytes = imageBytes,
        _selectedSports = selectedSports;

  final List<int> _imageBytes;
  @override
  List<int> get imageBytes {
    if (_imageBytes is EqualUnmodifiableListView) return _imageBytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageBytes);
  }

  @override
  final String imageType;
  final List<int> _selectedSports;
  @override
  List<int> get selectedSports {
    if (_selectedSports is EqualUnmodifiableListView) return _selectedSports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedSports);
  }

  @override
  String toString() {
    return 'AuthEvent.completeRegistration(imageBytes: $imageBytes, imageType: $imageType, selectedSports: $selectedSports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteRegistrationEventImpl &&
            const DeepCollectionEquality()
                .equals(other._imageBytes, _imageBytes) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            const DeepCollectionEquality()
                .equals(other._selectedSports, _selectedSports));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_imageBytes),
      imageType,
      const DeepCollectionEquality().hash(_selectedSports));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteRegistrationEventImplCopyWith<_$CompleteRegistrationEventImpl>
      get copyWith => __$$CompleteRegistrationEventImplCopyWithImpl<
          _$CompleteRegistrationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) {
    return completeRegistration(imageBytes, imageType, selectedSports);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) {
    return completeRegistration?.call(imageBytes, imageType, selectedSports);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (completeRegistration != null) {
      return completeRegistration(imageBytes, imageType, selectedSports);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) {
    return completeRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) {
    return completeRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (completeRegistration != null) {
      return completeRegistration(this);
    }
    return orElse();
  }
}

abstract class _CompleteRegistrationEvent implements AuthEvent {
  const factory _CompleteRegistrationEvent(
          {required final List<int> imageBytes,
          required final String imageType,
          required final List<int> selectedSports}) =
      _$CompleteRegistrationEventImpl;

  List<int> get imageBytes;
  String get imageType;
  List<int> get selectedSports;
  @JsonKey(ignore: true)
  _$$CompleteRegistrationEventImplCopyWith<_$CompleteRegistrationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavoriteSportsEventImplCopyWith<$Res> {
  factory _$$AddFavoriteSportsEventImplCopyWith(
          _$AddFavoriteSportsEventImpl value,
          $Res Function(_$AddFavoriteSportsEventImpl) then) =
      __$$AddFavoriteSportsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> sportsIds});
}

/// @nodoc
class __$$AddFavoriteSportsEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AddFavoriteSportsEventImpl>
    implements _$$AddFavoriteSportsEventImplCopyWith<$Res> {
  __$$AddFavoriteSportsEventImplCopyWithImpl(
      _$AddFavoriteSportsEventImpl _value,
      $Res Function(_$AddFavoriteSportsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sportsIds = null,
  }) {
    return _then(_$AddFavoriteSportsEventImpl(
      sportsIds: null == sportsIds
          ? _value._sportsIds
          : sportsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$AddFavoriteSportsEventImpl implements _AddFavoriteSportsEvent {
  const _$AddFavoriteSportsEventImpl({required final List<int> sportsIds})
      : _sportsIds = sportsIds;

  final List<int> _sportsIds;
  @override
  List<int> get sportsIds {
    if (_sportsIds is EqualUnmodifiableListView) return _sportsIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sportsIds);
  }

  @override
  String toString() {
    return 'AuthEvent.addFavoriteSports(sportsIds: $sportsIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteSportsEventImpl &&
            const DeepCollectionEquality()
                .equals(other._sportsIds, _sportsIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sportsIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteSportsEventImplCopyWith<_$AddFavoriteSportsEventImpl>
      get copyWith => __$$AddFavoriteSportsEventImplCopyWithImpl<
          _$AddFavoriteSportsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) {
    return addFavoriteSports(sportsIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) {
    return addFavoriteSports?.call(sportsIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (addFavoriteSports != null) {
      return addFavoriteSports(sportsIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) {
    return addFavoriteSports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) {
    return addFavoriteSports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (addFavoriteSports != null) {
      return addFavoriteSports(this);
    }
    return orElse();
  }
}

abstract class _AddFavoriteSportsEvent implements AuthEvent {
  const factory _AddFavoriteSportsEvent({required final List<int> sportsIds}) =
      _$AddFavoriteSportsEventImpl;

  List<int> get sportsIds;
  @JsonKey(ignore: true)
  _$$AddFavoriteSportsEventImplCopyWith<_$AddFavoriteSportsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFavoriteSportsEventImplCopyWith<$Res> {
  factory _$$DeleteFavoriteSportsEventImplCopyWith(
          _$DeleteFavoriteSportsEventImpl value,
          $Res Function(_$DeleteFavoriteSportsEventImpl) then) =
      __$$DeleteFavoriteSportsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> sportsIds});
}

/// @nodoc
class __$$DeleteFavoriteSportsEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$DeleteFavoriteSportsEventImpl>
    implements _$$DeleteFavoriteSportsEventImplCopyWith<$Res> {
  __$$DeleteFavoriteSportsEventImplCopyWithImpl(
      _$DeleteFavoriteSportsEventImpl _value,
      $Res Function(_$DeleteFavoriteSportsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sportsIds = null,
  }) {
    return _then(_$DeleteFavoriteSportsEventImpl(
      sportsIds: null == sportsIds
          ? _value._sportsIds
          : sportsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$DeleteFavoriteSportsEventImpl implements _DeleteFavoriteSportsEvent {
  const _$DeleteFavoriteSportsEventImpl({required final List<int> sportsIds})
      : _sportsIds = sportsIds;

  final List<int> _sportsIds;
  @override
  List<int> get sportsIds {
    if (_sportsIds is EqualUnmodifiableListView) return _sportsIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sportsIds);
  }

  @override
  String toString() {
    return 'AuthEvent.deleteFavoriteSports(sportsIds: $sportsIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavoriteSportsEventImpl &&
            const DeepCollectionEquality()
                .equals(other._sportsIds, _sportsIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sportsIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFavoriteSportsEventImplCopyWith<_$DeleteFavoriteSportsEventImpl>
      get copyWith => __$$DeleteFavoriteSportsEventImplCopyWithImpl<
          _$DeleteFavoriteSportsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserProfile,
    required TResult Function(EditUserProfileParams params) editUserProfile,
    required TResult Function(List<PreferenceValue> params) editPreferences,
    required TResult Function() checkUserLogged,
    required TResult Function() confirmUserEmail,
    required TResult Function() resendconfirmUserEmail,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        completeRegistration,
    required TResult Function(List<int> sportsIds) addFavoriteSports,
    required TResult Function(List<int> sportsIds) deleteFavoriteSports,
  }) {
    return deleteFavoriteSports(sportsIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserProfile,
    TResult? Function(EditUserProfileParams params)? editUserProfile,
    TResult? Function(List<PreferenceValue> params)? editPreferences,
    TResult? Function()? checkUserLogged,
    TResult? Function()? confirmUserEmail,
    TResult? Function()? resendconfirmUserEmail,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult? Function(List<int> sportsIds)? addFavoriteSports,
    TResult? Function(List<int> sportsIds)? deleteFavoriteSports,
  }) {
    return deleteFavoriteSports?.call(sportsIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserProfile,
    TResult Function(EditUserProfileParams params)? editUserProfile,
    TResult Function(List<PreferenceValue> params)? editPreferences,
    TResult Function()? checkUserLogged,
    TResult Function()? confirmUserEmail,
    TResult Function()? resendconfirmUserEmail,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        completeRegistration,
    TResult Function(List<int> sportsIds)? addFavoriteSports,
    TResult Function(List<int> sportsIds)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (deleteFavoriteSports != null) {
      return deleteFavoriteSports(sportsIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetUserProfileEvent value) getUserProfile,
    required TResult Function(_EditUserProfileEvent value) editUserProfile,
    required TResult Function(_EditPreferencesEvent value) editPreferences,
    required TResult Function(_CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(_ConfirmUserEmailEvent value) confirmUserEmail,
    required TResult Function(_ResendConfirmUserEmailEvent value)
        resendconfirmUserEmail,
    required TResult Function(_GetSportsEvent value) getSports,
    required TResult Function(_CompleteRegistrationEvent value)
        completeRegistration,
    required TResult Function(_AddFavoriteSportsEvent value) addFavoriteSports,
    required TResult Function(_DeleteFavoriteSportsEvent value)
        deleteFavoriteSports,
  }) {
    return deleteFavoriteSports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEvent value)? login,
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetUserProfileEvent value)? getUserProfile,
    TResult? Function(_EditUserProfileEvent value)? editUserProfile,
    TResult? Function(_EditPreferencesEvent value)? editPreferences,
    TResult? Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult? Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult? Function(_GetSportsEvent value)? getSports,
    TResult? Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult? Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult? Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
  }) {
    return deleteFavoriteSports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetUserProfileEvent value)? getUserProfile,
    TResult Function(_EditUserProfileEvent value)? editUserProfile,
    TResult Function(_EditPreferencesEvent value)? editPreferences,
    TResult Function(_CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(_ConfirmUserEmailEvent value)? confirmUserEmail,
    TResult Function(_ResendConfirmUserEmailEvent value)?
        resendconfirmUserEmail,
    TResult Function(_GetSportsEvent value)? getSports,
    TResult Function(_CompleteRegistrationEvent value)? completeRegistration,
    TResult Function(_AddFavoriteSportsEvent value)? addFavoriteSports,
    TResult Function(_DeleteFavoriteSportsEvent value)? deleteFavoriteSports,
    required TResult orElse(),
  }) {
    if (deleteFavoriteSports != null) {
      return deleteFavoriteSports(this);
    }
    return orElse();
  }
}

abstract class _DeleteFavoriteSportsEvent implements AuthEvent {
  const factory _DeleteFavoriteSportsEvent(
      {required final List<int> sportsIds}) = _$DeleteFavoriteSportsEventImpl;

  List<int> get sportsIds;
  @JsonKey(ignore: true)
  _$$DeleteFavoriteSportsEventImplCopyWith<_$DeleteFavoriteSportsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AuthState.initial()';
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
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
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
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RegisterLoadingImplCopyWith<$Res> {
  factory _$$RegisterLoadingImplCopyWith(_$RegisterLoadingImpl value,
          $Res Function(_$RegisterLoadingImpl) then) =
      __$$RegisterLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterLoadingImpl>
    implements _$$RegisterLoadingImplCopyWith<$Res> {
  __$$RegisterLoadingImplCopyWithImpl(
      _$RegisterLoadingImpl _value, $Res Function(_$RegisterLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterLoadingImpl implements _RegisterLoading {
  const _$RegisterLoadingImpl();

  @override
  String toString() {
    return 'AuthState.registerLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return registerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return registerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return registerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return registerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading(this);
    }
    return orElse();
  }
}

abstract class _RegisterLoading implements AuthState {
  const factory _RegisterLoading() = _$RegisterLoadingImpl;
}

/// @nodoc
abstract class _$$RegisterFailureImplCopyWith<$Res> {
  factory _$$RegisterFailureImplCopyWith(_$RegisterFailureImpl value,
          $Res Function(_$RegisterFailureImpl) then) =
      __$$RegisterFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$RegisterFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterFailureImpl>
    implements _$$RegisterFailureImplCopyWith<$Res> {
  __$$RegisterFailureImplCopyWithImpl(
      _$RegisterFailureImpl _value, $Res Function(_$RegisterFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$RegisterFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$RegisterFailureImpl implements _RegisterFailure {
  const _$RegisterFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'AuthState.registerFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFailureImplCopyWith<_$RegisterFailureImpl> get copyWith =>
      __$$RegisterFailureImplCopyWithImpl<_$RegisterFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return registerFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return registerFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (registerFailure != null) {
      return registerFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return registerFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return registerFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (registerFailure != null) {
      return registerFailure(this);
    }
    return orElse();
  }
}

abstract class _RegisterFailure implements AuthState {
  const factory _RegisterFailure({final Failure? failure}) =
      _$RegisterFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$RegisterFailureImplCopyWith<_$RegisterFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisteredImplCopyWith<$Res> {
  factory _$$RegisteredImplCopyWith(
          _$RegisteredImpl value, $Res Function(_$RegisteredImpl) then) =
      __$$RegisteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool registered});
}

/// @nodoc
class __$$RegisteredImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisteredImpl>
    implements _$$RegisteredImplCopyWith<$Res> {
  __$$RegisteredImplCopyWithImpl(
      _$RegisteredImpl _value, $Res Function(_$RegisteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registered = null,
  }) {
    return _then(_$RegisteredImpl(
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisteredImpl implements _Registered {
  const _$RegisteredImpl({this.registered = false});

  @override
  @JsonKey()
  final bool registered;

  @override
  String toString() {
    return 'AuthState.registered(registered: $registered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisteredImpl &&
            (identical(other.registered, registered) ||
                other.registered == registered));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisteredImplCopyWith<_$RegisteredImpl> get copyWith =>
      __$$RegisteredImplCopyWithImpl<_$RegisteredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return registered(this.registered);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return registered?.call(this.registered);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this.registered);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class _Registered implements AuthState {
  const factory _Registered({final bool registered}) = _$RegisteredImpl;

  bool get registered;
  @JsonKey(ignore: true)
  _$$RegisteredImplCopyWith<_$RegisteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoadingImpl implements _LoginLoading {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'AuthState.logginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return logginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return logginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (logginLoading != null) {
      return logginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return logginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return logginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (logginLoading != null) {
      return logginLoading(this);
    }
    return orElse();
  }
}

abstract class _LoginLoading implements AuthState {
  const factory _LoginLoading() = _$LoginLoadingImpl;
}

/// @nodoc
abstract class _$$LoginFailureImplCopyWith<$Res> {
  factory _$$LoginFailureImplCopyWith(
          _$LoginFailureImpl value, $Res Function(_$LoginFailureImpl) then) =
      __$$LoginFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$LoginFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginFailureImpl>
    implements _$$LoginFailureImplCopyWith<$Res> {
  __$$LoginFailureImplCopyWithImpl(
      _$LoginFailureImpl _value, $Res Function(_$LoginFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$LoginFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$LoginFailureImpl implements _LoginFailure {
  const _$LoginFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'AuthState.logginFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      __$$LoginFailureImplCopyWithImpl<_$LoginFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return logginFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return logginFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (logginFailure != null) {
      return logginFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return logginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return logginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (logginFailure != null) {
      return logginFailure(this);
    }
    return orElse();
  }
}

abstract class _LoginFailure implements AuthState {
  const factory _LoginFailure({final Failure? failure}) = _$LoginFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfileEntity? user});
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$LoggedInImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfileEntity?,
    ));
  }
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl({this.user = null});

  @override
  @JsonKey()
  final UserProfileEntity? user;

  @override
  String toString() {
    return 'AuthState.loggedIn(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return loggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthState {
  const factory _LoggedIn({final UserProfileEntity? user}) = _$LoggedInImpl;

  UserProfileEntity? get user;
  @JsonKey(ignore: true)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmEmailLoadingImplCopyWith<$Res> {
  factory _$$ConfirmEmailLoadingImplCopyWith(_$ConfirmEmailLoadingImpl value,
          $Res Function(_$ConfirmEmailLoadingImpl) then) =
      __$$ConfirmEmailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmEmailLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ConfirmEmailLoadingImpl>
    implements _$$ConfirmEmailLoadingImplCopyWith<$Res> {
  __$$ConfirmEmailLoadingImplCopyWithImpl(_$ConfirmEmailLoadingImpl _value,
      $Res Function(_$ConfirmEmailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmEmailLoadingImpl implements _ConfirmEmailLoading {
  const _$ConfirmEmailLoadingImpl();

  @override
  String toString() {
    return 'AuthState.confirmEmailLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return confirmEmailLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return confirmEmailLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (confirmEmailLoading != null) {
      return confirmEmailLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return confirmEmailLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return confirmEmailLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (confirmEmailLoading != null) {
      return confirmEmailLoading(this);
    }
    return orElse();
  }
}

abstract class _ConfirmEmailLoading implements AuthState {
  const factory _ConfirmEmailLoading() = _$ConfirmEmailLoadingImpl;
}

/// @nodoc
abstract class _$$ConfirmEmailFailureImplCopyWith<$Res> {
  factory _$$ConfirmEmailFailureImplCopyWith(_$ConfirmEmailFailureImpl value,
          $Res Function(_$ConfirmEmailFailureImpl) then) =
      __$$ConfirmEmailFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$ConfirmEmailFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ConfirmEmailFailureImpl>
    implements _$$ConfirmEmailFailureImplCopyWith<$Res> {
  __$$ConfirmEmailFailureImplCopyWithImpl(_$ConfirmEmailFailureImpl _value,
      $Res Function(_$ConfirmEmailFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$ConfirmEmailFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ConfirmEmailFailureImpl implements _ConfirmEmailFailure {
  const _$ConfirmEmailFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'AuthState.confirmEmailFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmEmailFailureImplCopyWith<_$ConfirmEmailFailureImpl> get copyWith =>
      __$$ConfirmEmailFailureImplCopyWithImpl<_$ConfirmEmailFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return confirmEmailFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return confirmEmailFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (confirmEmailFailure != null) {
      return confirmEmailFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return confirmEmailFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return confirmEmailFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (confirmEmailFailure != null) {
      return confirmEmailFailure(this);
    }
    return orElse();
  }
}

abstract class _ConfirmEmailFailure implements AuthState {
  const factory _ConfirmEmailFailure({final Failure? failure}) =
      _$ConfirmEmailFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$ConfirmEmailFailureImplCopyWith<_$ConfirmEmailFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailConfirmedImplCopyWith<$Res> {
  factory _$$EmailConfirmedImplCopyWith(_$EmailConfirmedImpl value,
          $Res Function(_$EmailConfirmedImpl) then) =
      __$$EmailConfirmedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SportEntity> sports});
}

/// @nodoc
class __$$EmailConfirmedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$EmailConfirmedImpl>
    implements _$$EmailConfirmedImplCopyWith<$Res> {
  __$$EmailConfirmedImplCopyWithImpl(
      _$EmailConfirmedImpl _value, $Res Function(_$EmailConfirmedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sports = null,
  }) {
    return _then(_$EmailConfirmedImpl(
      sports: null == sports
          ? _value._sports
          : sports // ignore: cast_nullable_to_non_nullable
              as List<SportEntity>,
    ));
  }
}

/// @nodoc

class _$EmailConfirmedImpl implements _EmailConfirmed {
  const _$EmailConfirmedImpl({final List<SportEntity> sports = const []})
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
    return 'AuthState.emailConfirmed(sports: $sports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailConfirmedImpl &&
            const DeepCollectionEquality().equals(other._sports, _sports));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sports));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailConfirmedImplCopyWith<_$EmailConfirmedImpl> get copyWith =>
      __$$EmailConfirmedImplCopyWithImpl<_$EmailConfirmedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return emailConfirmed(sports);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return emailConfirmed?.call(sports);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (emailConfirmed != null) {
      return emailConfirmed(sports);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return emailConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return emailConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (emailConfirmed != null) {
      return emailConfirmed(this);
    }
    return orElse();
  }
}

abstract class _EmailConfirmed implements AuthState {
  const factory _EmailConfirmed({final List<SportEntity> sports}) =
      _$EmailConfirmedImpl;

  List<SportEntity> get sports;
  @JsonKey(ignore: true)
  _$$EmailConfirmedImplCopyWith<_$EmailConfirmedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendConfirmEmailLoadingImplCopyWith<$Res> {
  factory _$$ResendConfirmEmailLoadingImplCopyWith(
          _$ResendConfirmEmailLoadingImpl value,
          $Res Function(_$ResendConfirmEmailLoadingImpl) then) =
      __$$ResendConfirmEmailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendConfirmEmailLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ResendConfirmEmailLoadingImpl>
    implements _$$ResendConfirmEmailLoadingImplCopyWith<$Res> {
  __$$ResendConfirmEmailLoadingImplCopyWithImpl(
      _$ResendConfirmEmailLoadingImpl _value,
      $Res Function(_$ResendConfirmEmailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResendConfirmEmailLoadingImpl implements _ResendConfirmEmailLoading {
  const _$ResendConfirmEmailLoadingImpl();

  @override
  String toString() {
    return 'AuthState.resendConfirmEmailLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendConfirmEmailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return resendConfirmEmailLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return resendConfirmEmailLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (resendConfirmEmailLoading != null) {
      return resendConfirmEmailLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return resendConfirmEmailLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return resendConfirmEmailLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (resendConfirmEmailLoading != null) {
      return resendConfirmEmailLoading(this);
    }
    return orElse();
  }
}

abstract class _ResendConfirmEmailLoading implements AuthState {
  const factory _ResendConfirmEmailLoading() = _$ResendConfirmEmailLoadingImpl;
}

/// @nodoc
abstract class _$$ResendConfirmEmailFailureImplCopyWith<$Res> {
  factory _$$ResendConfirmEmailFailureImplCopyWith(
          _$ResendConfirmEmailFailureImpl value,
          $Res Function(_$ResendConfirmEmailFailureImpl) then) =
      __$$ResendConfirmEmailFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$ResendConfirmEmailFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ResendConfirmEmailFailureImpl>
    implements _$$ResendConfirmEmailFailureImplCopyWith<$Res> {
  __$$ResendConfirmEmailFailureImplCopyWithImpl(
      _$ResendConfirmEmailFailureImpl _value,
      $Res Function(_$ResendConfirmEmailFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$ResendConfirmEmailFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ResendConfirmEmailFailureImpl implements _ResendConfirmEmailFailure {
  const _$ResendConfirmEmailFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'AuthState.resendConfirmEmailFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendConfirmEmailFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendConfirmEmailFailureImplCopyWith<_$ResendConfirmEmailFailureImpl>
      get copyWith => __$$ResendConfirmEmailFailureImplCopyWithImpl<
          _$ResendConfirmEmailFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return resendConfirmEmailFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return resendConfirmEmailFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (resendConfirmEmailFailure != null) {
      return resendConfirmEmailFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return resendConfirmEmailFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return resendConfirmEmailFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (resendConfirmEmailFailure != null) {
      return resendConfirmEmailFailure(this);
    }
    return orElse();
  }
}

abstract class _ResendConfirmEmailFailure implements AuthState {
  const factory _ResendConfirmEmailFailure({final Failure? failure}) =
      _$ResendConfirmEmailFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$ResendConfirmEmailFailureImplCopyWith<_$ResendConfirmEmailFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailConfirmationSentImplCopyWith<$Res> {
  factory _$$EmailConfirmationSentImplCopyWith(
          _$EmailConfirmationSentImpl value,
          $Res Function(_$EmailConfirmationSentImpl) then) =
      __$$EmailConfirmationSentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailConfirmationSentImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$EmailConfirmationSentImpl>
    implements _$$EmailConfirmationSentImplCopyWith<$Res> {
  __$$EmailConfirmationSentImplCopyWithImpl(_$EmailConfirmationSentImpl _value,
      $Res Function(_$EmailConfirmationSentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailConfirmationSentImpl implements _EmailConfirmationSent {
  const _$EmailConfirmationSentImpl();

  @override
  String toString() {
    return 'AuthState.emailConfirmationSent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailConfirmationSentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return emailConfirmationSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return emailConfirmationSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (emailConfirmationSent != null) {
      return emailConfirmationSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return emailConfirmationSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return emailConfirmationSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (emailConfirmationSent != null) {
      return emailConfirmationSent(this);
    }
    return orElse();
  }
}

abstract class _EmailConfirmationSent implements AuthState {
  const factory _EmailConfirmationSent() = _$EmailConfirmationSentImpl;
}

/// @nodoc
abstract class _$$CompleteRegistrationLoadingImplCopyWith<$Res> {
  factory _$$CompleteRegistrationLoadingImplCopyWith(
          _$CompleteRegistrationLoadingImpl value,
          $Res Function(_$CompleteRegistrationLoadingImpl) then) =
      __$$CompleteRegistrationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteRegistrationLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CompleteRegistrationLoadingImpl>
    implements _$$CompleteRegistrationLoadingImplCopyWith<$Res> {
  __$$CompleteRegistrationLoadingImplCopyWithImpl(
      _$CompleteRegistrationLoadingImpl _value,
      $Res Function(_$CompleteRegistrationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteRegistrationLoadingImpl
    implements _CompleteRegistrationLoading {
  const _$CompleteRegistrationLoadingImpl();

  @override
  String toString() {
    return 'AuthState.completeRegistrationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteRegistrationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return completeRegistrationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return completeRegistrationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (completeRegistrationLoading != null) {
      return completeRegistrationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return completeRegistrationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return completeRegistrationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (completeRegistrationLoading != null) {
      return completeRegistrationLoading(this);
    }
    return orElse();
  }
}

abstract class _CompleteRegistrationLoading implements AuthState {
  const factory _CompleteRegistrationLoading() =
      _$CompleteRegistrationLoadingImpl;
}

/// @nodoc
abstract class _$$CompleteRegistrationFailureImplCopyWith<$Res> {
  factory _$$CompleteRegistrationFailureImplCopyWith(
          _$CompleteRegistrationFailureImpl value,
          $Res Function(_$CompleteRegistrationFailureImpl) then) =
      __$$CompleteRegistrationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$CompleteRegistrationFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CompleteRegistrationFailureImpl>
    implements _$$CompleteRegistrationFailureImplCopyWith<$Res> {
  __$$CompleteRegistrationFailureImplCopyWithImpl(
      _$CompleteRegistrationFailureImpl _value,
      $Res Function(_$CompleteRegistrationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$CompleteRegistrationFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$CompleteRegistrationFailureImpl
    implements _CompleteRegistrationFailure {
  const _$CompleteRegistrationFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'AuthState.completeRegistrationailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteRegistrationFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteRegistrationFailureImplCopyWith<_$CompleteRegistrationFailureImpl>
      get copyWith => __$$CompleteRegistrationFailureImplCopyWithImpl<
          _$CompleteRegistrationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return completeRegistrationailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return completeRegistrationailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (completeRegistrationailure != null) {
      return completeRegistrationailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return completeRegistrationailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return completeRegistrationailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (completeRegistrationailure != null) {
      return completeRegistrationailure(this);
    }
    return orElse();
  }
}

abstract class _CompleteRegistrationFailure implements AuthState {
  const factory _CompleteRegistrationFailure({final Failure? failure}) =
      _$CompleteRegistrationFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$CompleteRegistrationFailureImplCopyWith<_$CompleteRegistrationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationCompletedImplCopyWith<$Res> {
  factory _$$RegistrationCompletedImplCopyWith(
          _$RegistrationCompletedImpl value,
          $Res Function(_$RegistrationCompletedImpl) then) =
      __$$RegistrationCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfileEntity? userProfile});
}

/// @nodoc
class __$$RegistrationCompletedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegistrationCompletedImpl>
    implements _$$RegistrationCompletedImplCopyWith<$Res> {
  __$$RegistrationCompletedImplCopyWithImpl(_$RegistrationCompletedImpl _value,
      $Res Function(_$RegistrationCompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = freezed,
  }) {
    return _then(_$RegistrationCompletedImpl(
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileEntity?,
    ));
  }
}

/// @nodoc

class _$RegistrationCompletedImpl implements _RegistrationCompleted {
  const _$RegistrationCompletedImpl({this.userProfile = null});

  @override
  @JsonKey()
  final UserProfileEntity? userProfile;

  @override
  String toString() {
    return 'AuthState.registrationCompleted(userProfile: $userProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationCompletedImpl &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationCompletedImplCopyWith<_$RegistrationCompletedImpl>
      get copyWith => __$$RegistrationCompletedImplCopyWithImpl<
          _$RegistrationCompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return registrationCompleted(userProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return registrationCompleted?.call(userProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (registrationCompleted != null) {
      return registrationCompleted(userProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return registrationCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return registrationCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (registrationCompleted != null) {
      return registrationCompleted(this);
    }
    return orElse();
  }
}

abstract class _RegistrationCompleted implements AuthState {
  const factory _RegistrationCompleted({final UserProfileEntity? userProfile}) =
      _$RegistrationCompletedImpl;

  UserProfileEntity? get userProfile;
  @JsonKey(ignore: true)
  _$$RegistrationCompletedImplCopyWith<_$RegistrationCompletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckUserLoadingImplCopyWith<$Res> {
  factory _$$CheckUserLoadingImplCopyWith(_$CheckUserLoadingImpl value,
          $Res Function(_$CheckUserLoadingImpl) then) =
      __$$CheckUserLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUserLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CheckUserLoadingImpl>
    implements _$$CheckUserLoadingImplCopyWith<$Res> {
  __$$CheckUserLoadingImplCopyWithImpl(_$CheckUserLoadingImpl _value,
      $Res Function(_$CheckUserLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckUserLoadingImpl implements _CheckUserLoading {
  const _$CheckUserLoadingImpl();

  @override
  String toString() {
    return 'AuthState.checkUserLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUserLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return checkUserLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return checkUserLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (checkUserLoading != null) {
      return checkUserLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return checkUserLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return checkUserLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (checkUserLoading != null) {
      return checkUserLoading(this);
    }
    return orElse();
  }
}

abstract class _CheckUserLoading implements AuthState {
  const factory _CheckUserLoading() = _$CheckUserLoadingImpl;
}

/// @nodoc
abstract class _$$CheckUserLoggedImplCopyWith<$Res> {
  factory _$$CheckUserLoggedImplCopyWith(_$CheckUserLoggedImpl value,
          $Res Function(_$CheckUserLoggedImpl) then) =
      __$$CheckUserLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAuthState userAuthState});
}

/// @nodoc
class __$$CheckUserLoggedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CheckUserLoggedImpl>
    implements _$$CheckUserLoggedImplCopyWith<$Res> {
  __$$CheckUserLoggedImplCopyWithImpl(
      _$CheckUserLoggedImpl _value, $Res Function(_$CheckUserLoggedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAuthState = null,
  }) {
    return _then(_$CheckUserLoggedImpl(
      userAuthState: null == userAuthState
          ? _value.userAuthState
          : userAuthState // ignore: cast_nullable_to_non_nullable
              as UserAuthState,
    ));
  }
}

/// @nodoc

class _$CheckUserLoggedImpl implements _CheckUserLogged {
  const _$CheckUserLoggedImpl({this.userAuthState = UserAuthState.guest});

  @override
  @JsonKey()
  final UserAuthState userAuthState;

  @override
  String toString() {
    return 'AuthState.checkUserLogged(userAuthState: $userAuthState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUserLoggedImpl &&
            (identical(other.userAuthState, userAuthState) ||
                other.userAuthState == userAuthState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAuthState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUserLoggedImplCopyWith<_$CheckUserLoggedImpl> get copyWith =>
      __$$CheckUserLoggedImplCopyWithImpl<_$CheckUserLoggedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return checkUserLogged(userAuthState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return checkUserLogged?.call(userAuthState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (checkUserLogged != null) {
      return checkUserLogged(userAuthState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return checkUserLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return checkUserLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (checkUserLogged != null) {
      return checkUserLogged(this);
    }
    return orElse();
  }
}

abstract class _CheckUserLogged implements AuthState {
  const factory _CheckUserLogged({final UserAuthState userAuthState}) =
      _$CheckUserLoggedImpl;

  UserAuthState get userAuthState;
  @JsonKey(ignore: true)
  _$$CheckUserLoggedImplCopyWith<_$CheckUserLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CeckUserFailureImplCopyWith<$Res> {
  factory _$$CeckUserFailureImplCopyWith(_$CeckUserFailureImpl value,
          $Res Function(_$CeckUserFailureImpl) then) =
      __$$CeckUserFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$CeckUserFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CeckUserFailureImpl>
    implements _$$CeckUserFailureImplCopyWith<$Res> {
  __$$CeckUserFailureImplCopyWithImpl(
      _$CeckUserFailureImpl _value, $Res Function(_$CeckUserFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$CeckUserFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$CeckUserFailureImpl implements _CeckUserFailure {
  const _$CeckUserFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'AuthState.checkUserFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeckUserFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CeckUserFailureImplCopyWith<_$CeckUserFailureImpl> get copyWith =>
      __$$CeckUserFailureImplCopyWithImpl<_$CeckUserFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return checkUserFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return checkUserFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (checkUserFailure != null) {
      return checkUserFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return checkUserFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return checkUserFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (checkUserFailure != null) {
      return checkUserFailure(this);
    }
    return orElse();
  }
}

abstract class _CeckUserFailure implements AuthState {
  const factory _CeckUserFailure({final Failure? failure}) =
      _$CeckUserFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$CeckUserFailureImplCopyWith<_$CeckUserFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserProfileLocalLoadingImplCopyWith<$Res> {
  factory _$$UserProfileLocalLoadingImplCopyWith(
          _$UserProfileLocalLoadingImpl value,
          $Res Function(_$UserProfileLocalLoadingImpl) then) =
      __$$UserProfileLocalLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserProfileLocalLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserProfileLocalLoadingImpl>
    implements _$$UserProfileLocalLoadingImplCopyWith<$Res> {
  __$$UserProfileLocalLoadingImplCopyWithImpl(
      _$UserProfileLocalLoadingImpl _value,
      $Res Function(_$UserProfileLocalLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserProfileLocalLoadingImpl implements _UserProfileLocalLoading {
  const _$UserProfileLocalLoadingImpl();

  @override
  String toString() {
    return 'AuthState.userProfileLocalLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileLocalLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return userProfileLocalLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return userProfileLocalLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (userProfileLocalLoading != null) {
      return userProfileLocalLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return userProfileLocalLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return userProfileLocalLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (userProfileLocalLoading != null) {
      return userProfileLocalLoading(this);
    }
    return orElse();
  }
}

abstract class _UserProfileLocalLoading implements AuthState {
  const factory _UserProfileLocalLoading() = _$UserProfileLocalLoadingImpl;
}

/// @nodoc
abstract class _$$UserProfileLoadingImplCopyWith<$Res> {
  factory _$$UserProfileLoadingImplCopyWith(_$UserProfileLoadingImpl value,
          $Res Function(_$UserProfileLoadingImpl) then) =
      __$$UserProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserProfileLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserProfileLoadingImpl>
    implements _$$UserProfileLoadingImplCopyWith<$Res> {
  __$$UserProfileLoadingImplCopyWithImpl(_$UserProfileLoadingImpl _value,
      $Res Function(_$UserProfileLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserProfileLoadingImpl implements _UserProfileLoading {
  const _$UserProfileLoadingImpl();

  @override
  String toString() {
    return 'AuthState.userProfileLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return userProfileLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return userProfileLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (userProfileLoading != null) {
      return userProfileLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return userProfileLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return userProfileLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (userProfileLoading != null) {
      return userProfileLoading(this);
    }
    return orElse();
  }
}

abstract class _UserProfileLoading implements AuthState {
  const factory _UserProfileLoading() = _$UserProfileLoadingImpl;
}

/// @nodoc
abstract class _$$UserProfileFailureImplCopyWith<$Res> {
  factory _$$UserProfileFailureImplCopyWith(_$UserProfileFailureImpl value,
          $Res Function(_$UserProfileFailureImpl) then) =
      __$$UserProfileFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$UserProfileFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserProfileFailureImpl>
    implements _$$UserProfileFailureImplCopyWith<$Res> {
  __$$UserProfileFailureImplCopyWithImpl(_$UserProfileFailureImpl _value,
      $Res Function(_$UserProfileFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$UserProfileFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$UserProfileFailureImpl implements _UserProfileFailure {
  const _$UserProfileFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'AuthState.userProfileFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileFailureImplCopyWith<_$UserProfileFailureImpl> get copyWith =>
      __$$UserProfileFailureImplCopyWithImpl<_$UserProfileFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return userProfileFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return userProfileFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (userProfileFailure != null) {
      return userProfileFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return userProfileFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return userProfileFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (userProfileFailure != null) {
      return userProfileFailure(this);
    }
    return orElse();
  }
}

abstract class _UserProfileFailure implements AuthState {
  const factory _UserProfileFailure({final Failure? failure}) =
      _$UserProfileFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$UserProfileFailureImplCopyWith<_$UserProfileFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserProfileFetchedImplCopyWith<$Res> {
  factory _$$UserProfileFetchedImplCopyWith(_$UserProfileFetchedImpl value,
          $Res Function(_$UserProfileFetchedImpl) then) =
      __$$UserProfileFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfileEntity? userProfile});
}

/// @nodoc
class __$$UserProfileFetchedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserProfileFetchedImpl>
    implements _$$UserProfileFetchedImplCopyWith<$Res> {
  __$$UserProfileFetchedImplCopyWithImpl(_$UserProfileFetchedImpl _value,
      $Res Function(_$UserProfileFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = freezed,
  }) {
    return _then(_$UserProfileFetchedImpl(
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileEntity?,
    ));
  }
}

/// @nodoc

class _$UserProfileFetchedImpl implements _UserProfileFetched {
  const _$UserProfileFetchedImpl({this.userProfile = null});

  @override
  @JsonKey()
  final UserProfileEntity? userProfile;

  @override
  String toString() {
    return 'AuthState.userProfileFetched(userProfile: $userProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileFetchedImpl &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileFetchedImplCopyWith<_$UserProfileFetchedImpl> get copyWith =>
      __$$UserProfileFetchedImplCopyWithImpl<_$UserProfileFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return userProfileFetched(userProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return userProfileFetched?.call(userProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (userProfileFetched != null) {
      return userProfileFetched(userProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return userProfileFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return userProfileFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (userProfileFetched != null) {
      return userProfileFetched(this);
    }
    return orElse();
  }
}

abstract class _UserProfileFetched implements AuthState {
  const factory _UserProfileFetched({final UserProfileEntity? userProfile}) =
      _$UserProfileFetchedImpl;

  UserProfileEntity? get userProfile;
  @JsonKey(ignore: true)
  _$$UserProfileFetchedImplCopyWith<_$UserProfileFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSportsLoadingImplCopyWith<$Res> {
  factory _$$GetSportsLoadingImplCopyWith(_$GetSportsLoadingImpl value,
          $Res Function(_$GetSportsLoadingImpl) then) =
      __$$GetSportsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSportsLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$GetSportsLoadingImpl>
    implements _$$GetSportsLoadingImplCopyWith<$Res> {
  __$$GetSportsLoadingImplCopyWithImpl(_$GetSportsLoadingImpl _value,
      $Res Function(_$GetSportsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSportsLoadingImpl implements _GetSportsLoading {
  const _$GetSportsLoadingImpl();

  @override
  String toString() {
    return 'AuthState.getSportsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSportsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return getSportsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return getSportsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (getSportsLoading != null) {
      return getSportsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return getSportsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return getSportsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (getSportsLoading != null) {
      return getSportsLoading(this);
    }
    return orElse();
  }
}

abstract class _GetSportsLoading implements AuthState {
  const factory _GetSportsLoading() = _$GetSportsLoadingImpl;
}

/// @nodoc
abstract class _$$GetSportsFailureImplCopyWith<$Res> {
  factory _$$GetSportsFailureImplCopyWith(_$GetSportsFailureImpl value,
          $Res Function(_$GetSportsFailureImpl) then) =
      __$$GetSportsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$GetSportsFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$GetSportsFailureImpl>
    implements _$$GetSportsFailureImplCopyWith<$Res> {
  __$$GetSportsFailureImplCopyWithImpl(_$GetSportsFailureImpl _value,
      $Res Function(_$GetSportsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$GetSportsFailureImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$GetSportsFailureImpl implements _GetSportsFailure {
  const _$GetSportsFailureImpl({this.failure = null});

  @override
  @JsonKey()
  final Failure? failure;

  @override
  String toString() {
    return 'AuthState.getSportsFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSportsFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSportsFailureImplCopyWith<_$GetSportsFailureImpl> get copyWith =>
      __$$GetSportsFailureImplCopyWithImpl<_$GetSportsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return getSportsFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return getSportsFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (getSportsFailure != null) {
      return getSportsFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return getSportsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return getSportsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (getSportsFailure != null) {
      return getSportsFailure(this);
    }
    return orElse();
  }
}

abstract class _GetSportsFailure implements AuthState {
  const factory _GetSportsFailure({final Failure? failure}) =
      _$GetSportsFailureImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$GetSportsFailureImplCopyWith<_$GetSportsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SportsFetchedImplCopyWith<$Res> {
  factory _$$SportsFetchedImplCopyWith(
          _$SportsFetchedImpl value, $Res Function(_$SportsFetchedImpl) then) =
      __$$SportsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SportEntity> sports});
}

/// @nodoc
class __$$SportsFetchedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SportsFetchedImpl>
    implements _$$SportsFetchedImplCopyWith<$Res> {
  __$$SportsFetchedImplCopyWithImpl(
      _$SportsFetchedImpl _value, $Res Function(_$SportsFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sports = null,
  }) {
    return _then(_$SportsFetchedImpl(
      sports: null == sports
          ? _value._sports
          : sports // ignore: cast_nullable_to_non_nullable
              as List<SportEntity>,
    ));
  }
}

/// @nodoc

class _$SportsFetchedImpl implements _SportsFetched {
  const _$SportsFetchedImpl({final List<SportEntity> sports = const []})
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
    return 'AuthState.sportsFetched(sports: $sports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportsFetchedImpl &&
            const DeepCollectionEquality().equals(other._sports, _sports));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sports));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SportsFetchedImplCopyWith<_$SportsFetchedImpl> get copyWith =>
      __$$SportsFetchedImplCopyWithImpl<_$SportsFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(Failure? failure) registerFailure,
    required TResult Function(bool registered) registered,
    required TResult Function() logginLoading,
    required TResult Function(Failure? failure) logginFailure,
    required TResult Function(UserProfileEntity? user) loggedIn,
    required TResult Function() confirmEmailLoading,
    required TResult Function(Failure? failure) confirmEmailFailure,
    required TResult Function(List<SportEntity> sports) emailConfirmed,
    required TResult Function() resendConfirmEmailLoading,
    required TResult Function(Failure? failure) resendConfirmEmailFailure,
    required TResult Function() emailConfirmationSent,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(Failure? failure) completeRegistrationailure,
    required TResult Function(UserProfileEntity? userProfile)
        registrationCompleted,
    required TResult Function() checkUserLoading,
    required TResult Function(UserAuthState userAuthState) checkUserLogged,
    required TResult Function(Failure? failure) checkUserFailure,
    required TResult Function() userProfileLocalLoading,
    required TResult Function() userProfileLoading,
    required TResult Function(Failure? failure) userProfileFailure,
    required TResult Function(UserProfileEntity? userProfile)
        userProfileFetched,
    required TResult Function() getSportsLoading,
    required TResult Function(Failure? failure) getSportsFailure,
    required TResult Function(List<SportEntity> sports) sportsFetched,
  }) {
    return sportsFetched(sports);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(Failure? failure)? registerFailure,
    TResult? Function(bool registered)? registered,
    TResult? Function()? logginLoading,
    TResult? Function(Failure? failure)? logginFailure,
    TResult? Function(UserProfileEntity? user)? loggedIn,
    TResult? Function()? confirmEmailLoading,
    TResult? Function(Failure? failure)? confirmEmailFailure,
    TResult? Function(List<SportEntity> sports)? emailConfirmed,
    TResult? Function()? resendConfirmEmailLoading,
    TResult? Function(Failure? failure)? resendConfirmEmailFailure,
    TResult? Function()? emailConfirmationSent,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(Failure? failure)? completeRegistrationailure,
    TResult? Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult? Function()? checkUserLoading,
    TResult? Function(UserAuthState userAuthState)? checkUserLogged,
    TResult? Function(Failure? failure)? checkUserFailure,
    TResult? Function()? userProfileLocalLoading,
    TResult? Function()? userProfileLoading,
    TResult? Function(Failure? failure)? userProfileFailure,
    TResult? Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult? Function()? getSportsLoading,
    TResult? Function(Failure? failure)? getSportsFailure,
    TResult? Function(List<SportEntity> sports)? sportsFetched,
  }) {
    return sportsFetched?.call(sports);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(Failure? failure)? registerFailure,
    TResult Function(bool registered)? registered,
    TResult Function()? logginLoading,
    TResult Function(Failure? failure)? logginFailure,
    TResult Function(UserProfileEntity? user)? loggedIn,
    TResult Function()? confirmEmailLoading,
    TResult Function(Failure? failure)? confirmEmailFailure,
    TResult Function(List<SportEntity> sports)? emailConfirmed,
    TResult Function()? resendConfirmEmailLoading,
    TResult Function(Failure? failure)? resendConfirmEmailFailure,
    TResult Function()? emailConfirmationSent,
    TResult Function()? completeRegistrationLoading,
    TResult Function(Failure? failure)? completeRegistrationailure,
    TResult Function(UserProfileEntity? userProfile)? registrationCompleted,
    TResult Function()? checkUserLoading,
    TResult Function(UserAuthState userAuthState)? checkUserLogged,
    TResult Function(Failure? failure)? checkUserFailure,
    TResult Function()? userProfileLocalLoading,
    TResult Function()? userProfileLoading,
    TResult Function(Failure? failure)? userProfileFailure,
    TResult Function(UserProfileEntity? userProfile)? userProfileFetched,
    TResult Function()? getSportsLoading,
    TResult Function(Failure? failure)? getSportsFailure,
    TResult Function(List<SportEntity> sports)? sportsFetched,
    required TResult orElse(),
  }) {
    if (sportsFetched != null) {
      return sportsFetched(sports);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_Registered value) registered,
    required TResult Function(_LoginLoading value) logginLoading,
    required TResult Function(_LoginFailure value) logginFailure,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_ConfirmEmailLoading value) confirmEmailLoading,
    required TResult Function(_ConfirmEmailFailure value) confirmEmailFailure,
    required TResult Function(_EmailConfirmed value) emailConfirmed,
    required TResult Function(_ResendConfirmEmailLoading value)
        resendConfirmEmailLoading,
    required TResult Function(_ResendConfirmEmailFailure value)
        resendConfirmEmailFailure,
    required TResult Function(_EmailConfirmationSent value)
        emailConfirmationSent,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationailure,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
    required TResult Function(_CheckUserLoading value) checkUserLoading,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_CeckUserFailure value) checkUserFailure,
    required TResult Function(_UserProfileLocalLoading value)
        userProfileLocalLoading,
    required TResult Function(_UserProfileLoading value) userProfileLoading,
    required TResult Function(_UserProfileFailure value) userProfileFailure,
    required TResult Function(_UserProfileFetched value) userProfileFetched,
    required TResult Function(_GetSportsLoading value) getSportsLoading,
    required TResult Function(_GetSportsFailure value) getSportsFailure,
    required TResult Function(_SportsFetched value) sportsFetched,
  }) {
    return sportsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_LoginLoading value)? logginLoading,
    TResult? Function(_LoginFailure value)? logginFailure,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult? Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult? Function(_EmailConfirmed value)? emailConfirmed,
    TResult? Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult? Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult? Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
    TResult? Function(_CheckUserLoading value)? checkUserLoading,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_CeckUserFailure value)? checkUserFailure,
    TResult? Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult? Function(_UserProfileLoading value)? userProfileLoading,
    TResult? Function(_UserProfileFailure value)? userProfileFailure,
    TResult? Function(_UserProfileFetched value)? userProfileFetched,
    TResult? Function(_GetSportsLoading value)? getSportsLoading,
    TResult? Function(_GetSportsFailure value)? getSportsFailure,
    TResult? Function(_SportsFetched value)? sportsFetched,
  }) {
    return sportsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_Registered value)? registered,
    TResult Function(_LoginLoading value)? logginLoading,
    TResult Function(_LoginFailure value)? logginFailure,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_ConfirmEmailLoading value)? confirmEmailLoading,
    TResult Function(_ConfirmEmailFailure value)? confirmEmailFailure,
    TResult Function(_EmailConfirmed value)? emailConfirmed,
    TResult Function(_ResendConfirmEmailLoading value)?
        resendConfirmEmailLoading,
    TResult Function(_ResendConfirmEmailFailure value)?
        resendConfirmEmailFailure,
    TResult Function(_EmailConfirmationSent value)? emailConfirmationSent,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationailure,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    TResult Function(_CheckUserLoading value)? checkUserLoading,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_CeckUserFailure value)? checkUserFailure,
    TResult Function(_UserProfileLocalLoading value)? userProfileLocalLoading,
    TResult Function(_UserProfileLoading value)? userProfileLoading,
    TResult Function(_UserProfileFailure value)? userProfileFailure,
    TResult Function(_UserProfileFetched value)? userProfileFetched,
    TResult Function(_GetSportsLoading value)? getSportsLoading,
    TResult Function(_GetSportsFailure value)? getSportsFailure,
    TResult Function(_SportsFetched value)? sportsFetched,
    required TResult orElse(),
  }) {
    if (sportsFetched != null) {
      return sportsFetched(this);
    }
    return orElse();
  }
}

abstract class _SportsFetched implements AuthState {
  const factory _SportsFetched({final List<SportEntity> sports}) =
      _$SportsFetchedImpl;

  List<SportEntity> get sports;
  @JsonKey(ignore: true)
  _$$SportsFetchedImplCopyWith<_$SportsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
