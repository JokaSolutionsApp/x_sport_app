class ApiConstance {
  static const baseUrl =
      'https://xsportapi-dev.us-east-1.elasticbeanstalk.com/api/';

  static const loginApi = 'User/Login';
  static const registerApi = 'User/Register';
  static const editUserProfileApi = 'User/EditUserProfile';
  static const confirmEmailApi = 'User/ConfirmUserEmail';
  static const resendConfirmEmailApi = 'User/ResendEmailConfirmationCode';
  static const getUserProfileApi = 'User/GetUserProfile';
  static const selectCurrentSportApi = 'User/SelectCurrentSport';

  static const completeRegistrationApi = 'User/CompleteRegistration';
  static const addFavoriteSportsApi = 'User/AddFavoriteSports';
  static const deleteFavoriteSports = 'User/DeleteFavoriteSports';
  static const editPreferencesApi = 'User/EditPreferences';
  static const getSportsApi = 'Sport/GetSports';
}
