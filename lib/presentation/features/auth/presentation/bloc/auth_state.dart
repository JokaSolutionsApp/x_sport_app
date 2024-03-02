part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  //   @Default(false) bool isLoading,
  // @Default(RequestState.loading) RequestState requestState,
  // @Default('') String message,
  // UserDto? userSignIn,
  // List<SportDto>? sports,
  // @Default(UserAuthState.guest) UserAuthState userAuthState,
  // @Default(VerifiedAccountState.isNotVerified)
  // VerifiedAccountState validateAccountState,
  const factory AuthState.register({
    @Default(false) bool isLoading,
    @Default(RequestState.initial) RequestState state,
    @Default(null) bool? registered,
  }) = _Register;
}
