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
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
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

class _$LoginEventImpl implements LoginEvent {
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
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
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
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements AuthEvent {
  const factory LoginEvent() = _$LoginEventImpl;
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

class _$RegisterEventImpl implements RegisterEvent {
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
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
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
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegisterEvent implements AuthEvent {
  const factory RegisterEvent() = _$RegisterEventImpl;
}

/// @nodoc
abstract class _$$GetUserInfoEventImplCopyWith<$Res> {
  factory _$$GetUserInfoEventImplCopyWith(_$GetUserInfoEventImpl value,
          $Res Function(_$GetUserInfoEventImpl) then) =
      __$$GetUserInfoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserInfoEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetUserInfoEventImpl>
    implements _$$GetUserInfoEventImplCopyWith<$Res> {
  __$$GetUserInfoEventImplCopyWithImpl(_$GetUserInfoEventImpl _value,
      $Res Function(_$GetUserInfoEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserInfoEventImpl implements GetUserInfoEvent {
  const _$GetUserInfoEventImpl();

  @override
  String toString() {
    return 'AuthEvent.getUserInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserInfoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) {
    return getUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) {
    return getUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) {
    return getUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class GetUserInfoEvent implements AuthEvent {
  const factory GetUserInfoEvent() = _$GetUserInfoEventImpl;
}

/// @nodoc
abstract class _$$UpdateUserPreferencesEventImplCopyWith<$Res> {
  factory _$$UpdateUserPreferencesEventImplCopyWith(
          _$UpdateUserPreferencesEventImpl value,
          $Res Function(_$UpdateUserPreferencesEventImpl) then) =
      __$$UpdateUserPreferencesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int sportId, int favoriteHand, int favoritePos, int favoriteTime});
}

/// @nodoc
class __$$UpdateUserPreferencesEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateUserPreferencesEventImpl>
    implements _$$UpdateUserPreferencesEventImplCopyWith<$Res> {
  __$$UpdateUserPreferencesEventImplCopyWithImpl(
      _$UpdateUserPreferencesEventImpl _value,
      $Res Function(_$UpdateUserPreferencesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sportId = null,
    Object? favoriteHand = null,
    Object? favoritePos = null,
    Object? favoriteTime = null,
  }) {
    return _then(_$UpdateUserPreferencesEventImpl(
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteHand: null == favoriteHand
          ? _value.favoriteHand
          : favoriteHand // ignore: cast_nullable_to_non_nullable
              as int,
      favoritePos: null == favoritePos
          ? _value.favoritePos
          : favoritePos // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteTime: null == favoriteTime
          ? _value.favoriteTime
          : favoriteTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateUserPreferencesEventImpl implements UpdateUserPreferencesEvent {
  const _$UpdateUserPreferencesEventImpl(
      {required this.sportId,
      required this.favoriteHand,
      required this.favoritePos,
      required this.favoriteTime});

  @override
  final int sportId;
  @override
  final int favoriteHand;
  @override
  final int favoritePos;
  @override
  final int favoriteTime;

  @override
  String toString() {
    return 'AuthEvent.updateUserPreferences(sportId: $sportId, favoriteHand: $favoriteHand, favoritePos: $favoritePos, favoriteTime: $favoriteTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserPreferencesEventImpl &&
            (identical(other.sportId, sportId) || other.sportId == sportId) &&
            (identical(other.favoriteHand, favoriteHand) ||
                other.favoriteHand == favoriteHand) &&
            (identical(other.favoritePos, favoritePos) ||
                other.favoritePos == favoritePos) &&
            (identical(other.favoriteTime, favoriteTime) ||
                other.favoriteTime == favoriteTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sportId, favoriteHand, favoritePos, favoriteTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserPreferencesEventImplCopyWith<_$UpdateUserPreferencesEventImpl>
      get copyWith => __$$UpdateUserPreferencesEventImplCopyWithImpl<
          _$UpdateUserPreferencesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) {
    return updateUserPreferences(
        sportId, favoriteHand, favoritePos, favoriteTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) {
    return updateUserPreferences?.call(
        sportId, favoriteHand, favoritePos, favoriteTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
    required TResult orElse(),
  }) {
    if (updateUserPreferences != null) {
      return updateUserPreferences(
          sportId, favoriteHand, favoritePos, favoriteTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) {
    return updateUserPreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) {
    return updateUserPreferences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
    required TResult orElse(),
  }) {
    if (updateUserPreferences != null) {
      return updateUserPreferences(this);
    }
    return orElse();
  }
}

abstract class UpdateUserPreferencesEvent implements AuthEvent {
  const factory UpdateUserPreferencesEvent(
      {required final int sportId,
      required final int favoriteHand,
      required final int favoritePos,
      required final int favoriteTime}) = _$UpdateUserPreferencesEventImpl;

  int get sportId;
  int get favoriteHand;
  int get favoritePos;
  int get favoriteTime;
  @JsonKey(ignore: true)
  _$$UpdateUserPreferencesEventImplCopyWith<_$UpdateUserPreferencesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateHandPreferenceEventImplCopyWith<$Res> {
  factory _$$UpdateHandPreferenceEventImplCopyWith(
          _$UpdateHandPreferenceEventImpl value,
          $Res Function(_$UpdateHandPreferenceEventImpl) then) =
      __$$UpdateHandPreferenceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int sportId, String optionName});
}

/// @nodoc
class __$$UpdateHandPreferenceEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateHandPreferenceEventImpl>
    implements _$$UpdateHandPreferenceEventImplCopyWith<$Res> {
  __$$UpdateHandPreferenceEventImplCopyWithImpl(
      _$UpdateHandPreferenceEventImpl _value,
      $Res Function(_$UpdateHandPreferenceEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sportId = null,
    Object? optionName = null,
  }) {
    return _then(_$UpdateHandPreferenceEventImpl(
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int,
      optionName: null == optionName
          ? _value.optionName
          : optionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateHandPreferenceEventImpl implements UpdateHandPreferenceEvent {
  const _$UpdateHandPreferenceEventImpl(
      {required this.sportId, required this.optionName});

  @override
  final int sportId;
  @override
  final String optionName;

  @override
  String toString() {
    return 'AuthEvent.updateHandPreference(sportId: $sportId, optionName: $optionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateHandPreferenceEventImpl &&
            (identical(other.sportId, sportId) || other.sportId == sportId) &&
            (identical(other.optionName, optionName) ||
                other.optionName == optionName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sportId, optionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateHandPreferenceEventImplCopyWith<_$UpdateHandPreferenceEventImpl>
      get copyWith => __$$UpdateHandPreferenceEventImplCopyWithImpl<
          _$UpdateHandPreferenceEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) {
    return updateHandPreference(sportId, optionName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) {
    return updateHandPreference?.call(sportId, optionName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
    required TResult orElse(),
  }) {
    if (updateHandPreference != null) {
      return updateHandPreference(sportId, optionName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) {
    return updateHandPreference(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) {
    return updateHandPreference?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
    required TResult orElse(),
  }) {
    if (updateHandPreference != null) {
      return updateHandPreference(this);
    }
    return orElse();
  }
}

abstract class UpdateHandPreferenceEvent implements AuthEvent {
  const factory UpdateHandPreferenceEvent(
      {required final int sportId,
      required final String optionName}) = _$UpdateHandPreferenceEventImpl;

  int get sportId;
  String get optionName;
  @JsonKey(ignore: true)
  _$$UpdateHandPreferenceEventImplCopyWith<_$UpdateHandPreferenceEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePositionPreferenceEventImplCopyWith<$Res> {
  factory _$$UpdatePositionPreferenceEventImplCopyWith(
          _$UpdatePositionPreferenceEventImpl value,
          $Res Function(_$UpdatePositionPreferenceEventImpl) then) =
      __$$UpdatePositionPreferenceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int sportId, String optionName});
}

/// @nodoc
class __$$UpdatePositionPreferenceEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdatePositionPreferenceEventImpl>
    implements _$$UpdatePositionPreferenceEventImplCopyWith<$Res> {
  __$$UpdatePositionPreferenceEventImplCopyWithImpl(
      _$UpdatePositionPreferenceEventImpl _value,
      $Res Function(_$UpdatePositionPreferenceEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sportId = null,
    Object? optionName = null,
  }) {
    return _then(_$UpdatePositionPreferenceEventImpl(
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int,
      optionName: null == optionName
          ? _value.optionName
          : optionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePositionPreferenceEventImpl
    implements UpdatePositionPreferenceEvent {
  const _$UpdatePositionPreferenceEventImpl(
      {required this.sportId, required this.optionName});

  @override
  final int sportId;
  @override
  final String optionName;

  @override
  String toString() {
    return 'AuthEvent.updatePositionPreference(sportId: $sportId, optionName: $optionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePositionPreferenceEventImpl &&
            (identical(other.sportId, sportId) || other.sportId == sportId) &&
            (identical(other.optionName, optionName) ||
                other.optionName == optionName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sportId, optionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePositionPreferenceEventImplCopyWith<
          _$UpdatePositionPreferenceEventImpl>
      get copyWith => __$$UpdatePositionPreferenceEventImplCopyWithImpl<
          _$UpdatePositionPreferenceEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) {
    return updatePositionPreference(sportId, optionName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) {
    return updatePositionPreference?.call(sportId, optionName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
    required TResult orElse(),
  }) {
    if (updatePositionPreference != null) {
      return updatePositionPreference(sportId, optionName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) {
    return updatePositionPreference(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) {
    return updatePositionPreference?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
    required TResult orElse(),
  }) {
    if (updatePositionPreference != null) {
      return updatePositionPreference(this);
    }
    return orElse();
  }
}

abstract class UpdatePositionPreferenceEvent implements AuthEvent {
  const factory UpdatePositionPreferenceEvent(
      {required final int sportId,
      required final String optionName}) = _$UpdatePositionPreferenceEventImpl;

  int get sportId;
  String get optionName;
  @JsonKey(ignore: true)
  _$$UpdatePositionPreferenceEventImplCopyWith<
          _$UpdatePositionPreferenceEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTimePreferenceEventImplCopyWith<$Res> {
  factory _$$UpdateTimePreferenceEventImplCopyWith(
          _$UpdateTimePreferenceEventImpl value,
          $Res Function(_$UpdateTimePreferenceEventImpl) then) =
      __$$UpdateTimePreferenceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int sportId, String optionName});
}

/// @nodoc
class __$$UpdateTimePreferenceEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateTimePreferenceEventImpl>
    implements _$$UpdateTimePreferenceEventImplCopyWith<$Res> {
  __$$UpdateTimePreferenceEventImplCopyWithImpl(
      _$UpdateTimePreferenceEventImpl _value,
      $Res Function(_$UpdateTimePreferenceEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sportId = null,
    Object? optionName = null,
  }) {
    return _then(_$UpdateTimePreferenceEventImpl(
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int,
      optionName: null == optionName
          ? _value.optionName
          : optionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateTimePreferenceEventImpl implements UpdateTimePreferenceEvent {
  const _$UpdateTimePreferenceEventImpl(
      {required this.sportId, required this.optionName});

  @override
  final int sportId;
  @override
  final String optionName;

  @override
  String toString() {
    return 'AuthEvent.updateTimePreference(sportId: $sportId, optionName: $optionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTimePreferenceEventImpl &&
            (identical(other.sportId, sportId) || other.sportId == sportId) &&
            (identical(other.optionName, optionName) ||
                other.optionName == optionName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sportId, optionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTimePreferenceEventImplCopyWith<_$UpdateTimePreferenceEventImpl>
      get copyWith => __$$UpdateTimePreferenceEventImplCopyWithImpl<
          _$UpdateTimePreferenceEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) {
    return updateTimePreference(sportId, optionName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) {
    return updateTimePreference?.call(sportId, optionName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
    required TResult orElse(),
  }) {
    if (updateTimePreference != null) {
      return updateTimePreference(sportId, optionName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) {
    return updateTimePreference(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) {
    return updateTimePreference?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
    required TResult orElse(),
  }) {
    if (updateTimePreference != null) {
      return updateTimePreference(this);
    }
    return orElse();
  }
}

abstract class UpdateTimePreferenceEvent implements AuthEvent {
  const factory UpdateTimePreferenceEvent(
      {required final int sportId,
      required final String optionName}) = _$UpdateTimePreferenceEventImpl;

  int get sportId;
  String get optionName;
  @JsonKey(ignore: true)
  _$$UpdateTimePreferenceEventImplCopyWith<_$UpdateTimePreferenceEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserProfileEventImplCopyWith<$Res> {
  factory _$$UpdateUserProfileEventImplCopyWith(
          _$UpdateUserProfileEventImpl value,
          $Res Function(_$UpdateUserProfileEventImpl) then) =
      __$$UpdateUserProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userName,
      String phone,
      List<int> image,
      String type,
      double latitude,
      double longitude,
      List<int> selectedSports,
      String gender});
}

/// @nodoc
class __$$UpdateUserProfileEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateUserProfileEventImpl>
    implements _$$UpdateUserProfileEventImplCopyWith<$Res> {
  __$$UpdateUserProfileEventImplCopyWithImpl(
      _$UpdateUserProfileEventImpl _value,
      $Res Function(_$UpdateUserProfileEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? phone = null,
    Object? image = null,
    Object? type = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? selectedSports = null,
    Object? gender = null,
  }) {
    return _then(_$UpdateUserProfileEventImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<int>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      selectedSports: null == selectedSports
          ? _value._selectedSports
          : selectedSports // ignore: cast_nullable_to_non_nullable
              as List<int>,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserProfileEventImpl implements UpdateUserProfileEvent {
  const _$UpdateUserProfileEventImpl(
      {required this.userName,
      required this.phone,
      required final List<int> image,
      required this.type,
      required this.latitude,
      required this.longitude,
      required final List<int> selectedSports,
      required this.gender})
      : _image = image,
        _selectedSports = selectedSports;

  @override
  final String userName;
  @override
  final String phone;
  final List<int> _image;
  @override
  List<int> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  final String type;
  @override
  final double latitude;
  @override
  final double longitude;
  final List<int> _selectedSports;
  @override
  List<int> get selectedSports {
    if (_selectedSports is EqualUnmodifiableListView) return _selectedSports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedSports);
  }

  @override
  final String gender;

  @override
  String toString() {
    return 'AuthEvent.updateUserProfile(userName: $userName, phone: $phone, image: $image, type: $type, latitude: $latitude, longitude: $longitude, selectedSports: $selectedSports, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProfileEventImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality()
                .equals(other._selectedSports, _selectedSports) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userName,
      phone,
      const DeepCollectionEquality().hash(_image),
      type,
      latitude,
      longitude,
      const DeepCollectionEquality().hash(_selectedSports),
      gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProfileEventImplCopyWith<_$UpdateUserProfileEventImpl>
      get copyWith => __$$UpdateUserProfileEventImplCopyWithImpl<
          _$UpdateUserProfileEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) {
    return updateUserProfile(userName, phone, image, type, latitude, longitude,
        selectedSports, gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) {
    return updateUserProfile?.call(userName, phone, image, type, latitude,
        longitude, selectedSports, gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(userName, phone, image, type, latitude,
          longitude, selectedSports, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) {
    return updateUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) {
    return updateUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateUserProfileEvent implements AuthEvent {
  const factory UpdateUserProfileEvent(
      {required final String userName,
      required final String phone,
      required final List<int> image,
      required final String type,
      required final double latitude,
      required final double longitude,
      required final List<int> selectedSports,
      required final String gender}) = _$UpdateUserProfileEventImpl;

  String get userName;
  String get phone;
  List<int> get image;
  String get type;
  double get latitude;
  double get longitude;
  List<int> get selectedSports;
  String get gender;
  @JsonKey(ignore: true)
  _$$UpdateUserProfileEventImplCopyWith<_$UpdateUserProfileEventImpl>
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

class _$CheckUserLoggedEventImpl implements CheckUserLoggedEvent {
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
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) {
    return checkUserLogged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) {
    return checkUserLogged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
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
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) {
    return checkUserLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) {
    return checkUserLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
    required TResult orElse(),
  }) {
    if (checkUserLogged != null) {
      return checkUserLogged(this);
    }
    return orElse();
  }
}

abstract class CheckUserLoggedEvent implements AuthEvent {
  const factory CheckUserLoggedEvent() = _$CheckUserLoggedEventImpl;
}

/// @nodoc
abstract class _$$ValidAccountEventImplCopyWith<$Res> {
  factory _$$ValidAccountEventImplCopyWith(_$ValidAccountEventImpl value,
          $Res Function(_$ValidAccountEventImpl) then) =
      __$$ValidAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidAccountEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ValidAccountEventImpl>
    implements _$$ValidAccountEventImplCopyWith<$Res> {
  __$$ValidAccountEventImplCopyWithImpl(_$ValidAccountEventImpl _value,
      $Res Function(_$ValidAccountEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidAccountEventImpl implements ValidAccountEvent {
  const _$ValidAccountEventImpl();

  @override
  String toString() {
    return 'AuthEvent.validateAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) {
    return validateAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) {
    return validateAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
    required TResult orElse(),
  }) {
    if (validateAccount != null) {
      return validateAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) {
    return validateAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) {
    return validateAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
    required TResult orElse(),
  }) {
    if (validateAccount != null) {
      return validateAccount(this);
    }
    return orElse();
  }
}

abstract class ValidAccountEvent implements AuthEvent {
  const factory ValidAccountEvent() = _$ValidAccountEventImpl;
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

class _$GetSportsEventImpl implements GetSportsEvent {
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
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) {
    return getSports();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) {
    return getSports?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
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
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) {
    return getSports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) {
    return getSports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
    required TResult orElse(),
  }) {
    if (getSports != null) {
      return getSports(this);
    }
    return orElse();
  }
}

abstract class GetSportsEvent implements AuthEvent {
  const factory GetSportsEvent() = _$GetSportsEventImpl;
}

/// @nodoc
abstract class _$$SendImageAndSportsEventImplCopyWith<$Res> {
  factory _$$SendImageAndSportsEventImplCopyWith(
          _$SendImageAndSportsEventImpl value,
          $Res Function(_$SendImageAndSportsEventImpl) then) =
      __$$SendImageAndSportsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> imageBytes, String imageType, List<int> selectedSports});
}

/// @nodoc
class __$$SendImageAndSportsEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendImageAndSportsEventImpl>
    implements _$$SendImageAndSportsEventImplCopyWith<$Res> {
  __$$SendImageAndSportsEventImplCopyWithImpl(
      _$SendImageAndSportsEventImpl _value,
      $Res Function(_$SendImageAndSportsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = null,
    Object? imageType = null,
    Object? selectedSports = null,
  }) {
    return _then(_$SendImageAndSportsEventImpl(
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

class _$SendImageAndSportsEventImpl implements SendImageAndSportsEvent {
  const _$SendImageAndSportsEventImpl(
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
    return 'AuthEvent.sendImageAndSports(imageBytes: $imageBytes, imageType: $imageType, selectedSports: $selectedSports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImageAndSportsEventImpl &&
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
  _$$SendImageAndSportsEventImplCopyWith<_$SendImageAndSportsEventImpl>
      get copyWith => __$$SendImageAndSportsEventImplCopyWithImpl<
          _$SendImageAndSportsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function() getUserInfo,
    required TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)
        updateUserPreferences,
    required TResult Function(int sportId, String optionName)
        updateHandPreference,
    required TResult Function(int sportId, String optionName)
        updatePositionPreference,
    required TResult Function(int sportId, String optionName)
        updateTimePreference,
    required TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)
        updateUserProfile,
    required TResult Function() checkUserLogged,
    required TResult Function() validateAccount,
    required TResult Function() getSports,
    required TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)
        sendImageAndSports,
  }) {
    return sendImageAndSports(imageBytes, imageType, selectedSports);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function()? getUserInfo,
    TResult? Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult? Function(int sportId, String optionName)? updateHandPreference,
    TResult? Function(int sportId, String optionName)? updatePositionPreference,
    TResult? Function(int sportId, String optionName)? updateTimePreference,
    TResult? Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult? Function()? checkUserLogged,
    TResult? Function()? validateAccount,
    TResult? Function()? getSports,
    TResult? Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
  }) {
    return sendImageAndSports?.call(imageBytes, imageType, selectedSports);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function()? getUserInfo,
    TResult Function(
            int sportId, int favoriteHand, int favoritePos, int favoriteTime)?
        updateUserPreferences,
    TResult Function(int sportId, String optionName)? updateHandPreference,
    TResult Function(int sportId, String optionName)? updatePositionPreference,
    TResult Function(int sportId, String optionName)? updateTimePreference,
    TResult Function(
            String userName,
            String phone,
            List<int> image,
            String type,
            double latitude,
            double longitude,
            List<int> selectedSports,
            String gender)?
        updateUserProfile,
    TResult Function()? checkUserLogged,
    TResult Function()? validateAccount,
    TResult Function()? getSports,
    TResult Function(
            List<int> imageBytes, String imageType, List<int> selectedSports)?
        sendImageAndSports,
    required TResult orElse(),
  }) {
    if (sendImageAndSports != null) {
      return sendImageAndSports(imageBytes, imageType, selectedSports);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserPreferencesEvent value)
        updateUserPreferences,
    required TResult Function(UpdateHandPreferenceEvent value)
        updateHandPreference,
    required TResult Function(UpdatePositionPreferenceEvent value)
        updatePositionPreference,
    required TResult Function(UpdateTimePreferenceEvent value)
        updateTimePreference,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(CheckUserLoggedEvent value) checkUserLogged,
    required TResult Function(ValidAccountEvent value) validateAccount,
    required TResult Function(GetSportsEvent value) getSports,
    required TResult Function(SendImageAndSportsEvent value) sendImageAndSports,
  }) {
    return sendImageAndSports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult? Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult? Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult? Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult? Function(ValidAccountEvent value)? validateAccount,
    TResult? Function(GetSportsEvent value)? getSports,
    TResult? Function(SendImageAndSportsEvent value)? sendImageAndSports,
  }) {
    return sendImageAndSports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserPreferencesEvent value)? updateUserPreferences,
    TResult Function(UpdateHandPreferenceEvent value)? updateHandPreference,
    TResult Function(UpdatePositionPreferenceEvent value)?
        updatePositionPreference,
    TResult Function(UpdateTimePreferenceEvent value)? updateTimePreference,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(CheckUserLoggedEvent value)? checkUserLogged,
    TResult Function(ValidAccountEvent value)? validateAccount,
    TResult Function(GetSportsEvent value)? getSports,
    TResult Function(SendImageAndSportsEvent value)? sendImageAndSports,
    required TResult orElse(),
  }) {
    if (sendImageAndSports != null) {
      return sendImageAndSports(this);
    }
    return orElse();
  }
}

abstract class SendImageAndSportsEvent implements AuthEvent {
  const factory SendImageAndSportsEvent(
      {required final List<int> imageBytes,
      required final String imageType,
      required final List<int> selectedSports}) = _$SendImageAndSportsEventImpl;

  List<int> get imageBytes;
  String get imageType;
  List<int> get selectedSports;
  @JsonKey(ignore: true)
  _$$SendImageAndSportsEventImplCopyWith<_$SendImageAndSportsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isLoading, RequestState state, bool? registered)
        register,
    required TResult Function(bool isLoading, VerifiedAccountState state)
        validateAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading, RequestState state, bool? registered)?
        register,
    TResult? Function(bool isLoading, VerifiedAccountState state)?
        validateAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading, RequestState state, bool? registered)?
        register,
    TResult Function(bool isLoading, VerifiedAccountState state)?
        validateAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Register value) register,
    required TResult Function(_ValidateAccount value) validateAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Register value)? register,
    TResult? Function(_ValidateAccount value)? validateAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Register value)? register,
    TResult Function(_ValidateAccount value)? validateAccount,
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
    required TResult Function(
            bool isLoading, RequestState state, bool? registered)
        register,
    required TResult Function(bool isLoading, VerifiedAccountState state)
        validateAccount,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading, RequestState state, bool? registered)?
        register,
    TResult? Function(bool isLoading, VerifiedAccountState state)?
        validateAccount,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading, RequestState state, bool? registered)?
        register,
    TResult Function(bool isLoading, VerifiedAccountState state)?
        validateAccount,
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
    required TResult Function(_Register value) register,
    required TResult Function(_ValidateAccount value) validateAccount,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Register value)? register,
    TResult? Function(_ValidateAccount value)? validateAccount,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Register value)? register,
    TResult Function(_ValidateAccount value)? validateAccount,
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
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, RequestState state, bool? registered});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? state = null,
    Object? registered = freezed,
  }) {
    return _then(_$RegisterImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      registered: freezed == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(
      {this.isLoading = false,
      this.state = RequestState.initial,
      this.registered = null});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final RequestState state;
  @override
  @JsonKey()
  final bool? registered;

  @override
  String toString() {
    return 'AuthState.register(isLoading: $isLoading, state: $state, registered: $registered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.registered, registered) ||
                other.registered == registered));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, state, registered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isLoading, RequestState state, bool? registered)
        register,
    required TResult Function(bool isLoading, VerifiedAccountState state)
        validateAccount,
  }) {
    return register(isLoading, state, registered);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading, RequestState state, bool? registered)?
        register,
    TResult? Function(bool isLoading, VerifiedAccountState state)?
        validateAccount,
  }) {
    return register?.call(isLoading, state, registered);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading, RequestState state, bool? registered)?
        register,
    TResult Function(bool isLoading, VerifiedAccountState state)?
        validateAccount,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(isLoading, state, registered);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Register value) register,
    required TResult Function(_ValidateAccount value) validateAccount,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Register value)? register,
    TResult? Function(_ValidateAccount value)? validateAccount,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Register value)? register,
    TResult Function(_ValidateAccount value)? validateAccount,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthState {
  const factory _Register(
      {final bool isLoading,
      final RequestState state,
      final bool? registered}) = _$RegisterImpl;

  bool get isLoading;
  RequestState get state;
  bool? get registered;
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateAccountImplCopyWith<$Res> {
  factory _$$ValidateAccountImplCopyWith(_$ValidateAccountImpl value,
          $Res Function(_$ValidateAccountImpl) then) =
      __$$ValidateAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, VerifiedAccountState state});
}

/// @nodoc
class __$$ValidateAccountImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ValidateAccountImpl>
    implements _$$ValidateAccountImplCopyWith<$Res> {
  __$$ValidateAccountImplCopyWithImpl(
      _$ValidateAccountImpl _value, $Res Function(_$ValidateAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? state = null,
  }) {
    return _then(_$ValidateAccountImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as VerifiedAccountState,
    ));
  }
}

/// @nodoc

class _$ValidateAccountImpl implements _ValidateAccount {
  const _$ValidateAccountImpl(
      {this.isLoading = false,
      this.state = VerifiedAccountState.isNotVerified});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final VerifiedAccountState state;

  @override
  String toString() {
    return 'AuthState.validateAccount(isLoading: $isLoading, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateAccountImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateAccountImplCopyWith<_$ValidateAccountImpl> get copyWith =>
      __$$ValidateAccountImplCopyWithImpl<_$ValidateAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool isLoading, RequestState state, bool? registered)
        register,
    required TResult Function(bool isLoading, VerifiedAccountState state)
        validateAccount,
  }) {
    return validateAccount(isLoading, state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading, RequestState state, bool? registered)?
        register,
    TResult? Function(bool isLoading, VerifiedAccountState state)?
        validateAccount,
  }) {
    return validateAccount?.call(isLoading, state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading, RequestState state, bool? registered)?
        register,
    TResult Function(bool isLoading, VerifiedAccountState state)?
        validateAccount,
    required TResult orElse(),
  }) {
    if (validateAccount != null) {
      return validateAccount(isLoading, state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Register value) register,
    required TResult Function(_ValidateAccount value) validateAccount,
  }) {
    return validateAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Register value)? register,
    TResult? Function(_ValidateAccount value)? validateAccount,
  }) {
    return validateAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Register value)? register,
    TResult Function(_ValidateAccount value)? validateAccount,
    required TResult orElse(),
  }) {
    if (validateAccount != null) {
      return validateAccount(this);
    }
    return orElse();
  }
}

abstract class _ValidateAccount implements AuthState {
  const factory _ValidateAccount(
      {final bool isLoading,
      final VerifiedAccountState state}) = _$ValidateAccountImpl;

  bool get isLoading;
  VerifiedAccountState get state;
  @JsonKey(ignore: true)
  _$$ValidateAccountImplCopyWith<_$ValidateAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
