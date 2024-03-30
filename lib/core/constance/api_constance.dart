class ApiConstance {
  static const baseUrl =
      'https://xsportapi-dev.us-east-1.elasticbeanstalk.com/api/';

// User Auth
  static const loginApi = 'User/Login';
  static const googleLoginApi = 'User/GoogleLogin';
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
  static const deleteUserProfile = 'User/DeleteAccount';
  static const getSportsApi = 'Sport/GetSports';

// Academy
  static const getSuggestedAcademies = 'Academy/GetSuggestedAcademies';
  static const aboutAcademyAcademies = 'Academy/GetAboutAcademy';
  static const getAcademyCourses = 'Academy/GetAcademyCourses';
  static const getAcademyCoursesinDate = 'Academy/GetAcademyCoursesInDate';
  static const getAcademyReviews = 'Academy/GetAcademyReviews';
  static const getSportsMemberShip = 'Academy/GetSportsMemberShip';

// Academy
  static const getNearByStadiums = 'Stadium/GetNearByStadiums';
  static const getFriendsStadiums = 'Stadium/GetFriendsStadiums';
  static const getAboutStadium = 'Stadium/GetAboutStadium';
}
