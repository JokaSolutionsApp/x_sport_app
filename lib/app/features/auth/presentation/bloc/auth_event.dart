part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login() = LoginEvent;
  const factory AuthEvent.register() = RegisterEvent;
  const factory AuthEvent.getUserInfo() = GetUserInfoEvent;
  const factory AuthEvent.updateUserPreferences({
    required int sportId,
    required int favoriteHand,
    required int favoritePos,
    required int favoriteTime,
  }) = UpdateUserPreferencesEvent;
  const factory AuthEvent.updateHandPreference({
    required int sportId,
    required String optionName,
  }) = UpdateHandPreferenceEvent;
  const factory AuthEvent.updatePositionPreference({
    required int sportId,
    required String optionName,
  }) = UpdatePositionPreferenceEvent;
  const factory AuthEvent.updateTimePreference({
    required int sportId,
    required String optionName,
  }) = UpdateTimePreferenceEvent;
  const factory AuthEvent.updateUserProfile({
    required String userName,
    required String phone,
    required List<int> image,
    required String type,
    required double latitude,
    required double longitude,
    required List<int> selectedSports,
    required String gender,
  }) = UpdateUserProfileEvent;
  const factory AuthEvent.checkUserLogged() = CheckUserLoggedEvent;
  const factory AuthEvent.validateAccount() = ValidAccountEvent;
  const factory AuthEvent.getSports() = GetSportsEvent;
  const factory AuthEvent.sendImageAndSports({
    required List<int> imageBytes,
    required String imageType,
    required List<int> selectedSports,
  }) = SendImageAndSportsEvent;
}
