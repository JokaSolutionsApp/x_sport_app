part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  // Register User
  const factory AuthState.registerLoading() = _RegisterLoading;
  const factory AuthState.registerFailure({
    @Default(null) Failure? failure,
  }) = _RegisterFailure;
  const factory AuthState.registered({
    @Default(null) UserProfileEntity? user,
  }) = _Registered;

  // Login User
  const factory AuthState.logginLoading() = _LoginLoading;
  const factory AuthState.logginFailure({
    @Default(null) Failure? failure,
  }) = _LoginFailure;
  const factory AuthState.loggedIn({
    @Default(null) UserProfileEntity? user,
  }) = _LoggedIn;

  // Google Login User
  const factory AuthState.googleLogginLoading() = _GoogleLoginLoading;
  const factory AuthState.googleLogginFailure({
    @Default(null) Failure? failure,
  }) = _GoogleLoginFailure;
  const factory AuthState.googleLoggedIn() = _GoogleLoggedIn;

  // Complete Your Profile
  const factory AuthState.completeYourProfileLoading() =
      _CompleteYourProfileLoading;
  const factory AuthState.completeYourProfileFailure({
    @Default(null) Failure? failure,
  }) = _CompleteYourProfileFailure;
  const factory AuthState.profileCompleted({
    @Default(null) UserProfileEntity? user,
  }) = _ProfileCompleted;

  // Confirm Email
  const factory AuthState.confirmEmailLoading() = _ConfirmEmailLoading;
  const factory AuthState.confirmEmailFailure({
    @Default(null) Failure? failure,
  }) = _ConfirmEmailFailure;
  const factory AuthState.emailConfirmed(
      {@Default([]) List<SportEntity> sports}) = _EmailConfirmed;

  // Resend Confirm Email
  const factory AuthState.resendConfirmEmailLoading() =
      _ResendConfirmEmailLoading;
  const factory AuthState.resendConfirmEmailFailure({
    @Default(null) Failure? failure,
  }) = _ResendConfirmEmailFailure;
  const factory AuthState.emailConfirmationSent() = _EmailConfirmationSent;

  // Compelete Registration
  const factory AuthState.completeRegistrationLoading() =
      _CompleteRegistrationLoading;
  const factory AuthState.completeRegistrationailure({
    @Default(null) Failure? failure,
  }) = _CompleteRegistrationFailure;
  const factory AuthState.registrationCompleted({
    @Default(null) UserProfileEntity? userProfile,
  }) = _RegistrationCompleted;

  // Check User Logged
  const factory AuthState.checkUserLoading() = _CheckUserLoading;
  const factory AuthState.checkAccountStatus({
    @Default(UserAuthState.guest) UserAuthState userAuthState,
  }) = _checkAccountStatus;
  const factory AuthState.checkUserFailure({
    @Default(null) Failure? failure,
  }) = _CeckUserFailure;

  // User Profile
  const factory AuthState.userProfileLocalLoading() = _UserProfileLocalLoading;
  const factory AuthState.userProfileLoading() = _UserProfileLoading;
  const factory AuthState.userProfileFailure({
    @Default(null) Failure? failure,
  }) = _UserProfileFailure;
  const factory AuthState.userProfileFetched({
    @Default(null) UserProfileEntity? userProfile,
  }) = _UserProfileFetched;

  // Get Sports
  const factory AuthState.getSportsLoading() = _GetSportsLoading;
  const factory AuthState.getSportsFailure({
    @Default(null) Failure? failure,
  }) = _GetSportsFailure;
  const factory AuthState.sportsFetched({
    @Default([]) List<SportEntity> sports,
  }) = _SportsFetched;

  // Change Email
  const factory AuthState.changeEmailLoading() = _ChangeEmailLoading;
  const factory AuthState.changeEmailFailure({
    @Default(null) Failure? failure,
  }) = _ChangeEmailFailure;
  const factory AuthState.emailChanged({
    @Default(false) bool emailChanged,
  }) = _EmailChanged;

  // Change Password
  const factory AuthState.changePasswordLoading() = _ChangePasswordLoading;
  const factory AuthState.changePasswordFailure({
    @Default(null) Failure? failure,
  }) = _ChangePasswordFailure;
  const factory AuthState.passwordChanged({
    @Default(false) bool passwordChanged,
  }) = _PasswordChanged;

  // Skip Profile Picture
  const factory AuthState.skipProfilePictureLoading() =
      _SkipProfilePictureLoading;
  const factory AuthState.skipProfilePictureFailure({
    @Default(null) Failure? failure,
  }) = _SkipProfilePictureFailure;
  const factory AuthState.profilePictureSkipped({
    @Default(false) bool profilePictureSkipped,
  }) = _ProfilePictureSkipped;
}
