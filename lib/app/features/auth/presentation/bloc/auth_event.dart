part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login() = _LoginEvent;
  const factory AuthEvent.register() = _RegisterEvent;
  const factory AuthEvent.getUserProfile() = _GetUserProfileEvent;
  const factory AuthEvent.editUserProfile(
      {required EditUserProfileParams params}) = _EditUserProfileEvent;
  const factory AuthEvent.editPreferences(
      {required List<PreferenceValue> params}) = _EditPreferencesEvent;

  const factory AuthEvent.checkUserLogged() = _CheckUserLoggedEvent;
  const factory AuthEvent.confirmUserEmail() = _ConfirmUserEmailEvent;
  const factory AuthEvent.resendconfirmUserEmail() =
      _ResendConfirmUserEmailEvent;
  const factory AuthEvent.getSports() = _GetSportsEvent;
  const factory AuthEvent.completeRegistration({
    required List<int> imageBytes,
    required String imageType,
    required List<int> selectedSports,
  }) = _CompleteRegistrationEvent;
  const factory AuthEvent.addFavoriteSports({required List<int> sportsIds}) =
      _AddFavoriteSportsEvent;
  const factory AuthEvent.deleteFavoriteSports({required List<int> sportsIds}) =
      _DeleteFavoriteSportsEvent;
}
