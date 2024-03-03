part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.register({
    @Default(false) bool isLoading,
    @Default(RequestState.initial) RequestState state,
    @Default(null) bool? registered,
  }) = _Register;

  const factory AuthState.validateAccount({
    @Default(false) bool isLoading,
    @Default(VerifiedAccountState.isNotVerified) VerifiedAccountState state,
  }) = _ValidateAccount;
}
