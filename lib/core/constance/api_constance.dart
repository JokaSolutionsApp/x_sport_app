class ApiConstance {
  // // static const baseUrl =
  // //     'https://xsportapi-dev.us-east-1.elasticbeanstalk.com/api/';
  static const baseUrl = 'https://api.xsportsapp.net/api/';

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
  static const changeEmail = 'User/ChangeEmail';
  static const changePassword = 'User/ChangePassword';
  static const getSportsApi = 'Sport/GetSports';
  static const accountStatussApi = 'User/AccountStatus';

// Academy
  static const getSuggestedAcademies = 'Academy/GetSuggestedAcademies';
  static const getAllAcademies = 'Academy/GetAllAcademies';
  static const aboutAcademyAcademies = 'Academy/GetAboutAcademy';
  static const getCoursesToSubscribe = 'Academy/GetCoursesToSubscribe';
  static const getCoursesToSubscribeinDate =
      'Academy/getCoursesToSubscribeInDate';
  static const getAcademyReviews = 'Academy/GetAcademyReviews';
  static const getSportsMemberShip = 'Academy/GetMemberShips';
  static const inrollUserInCourse = 'User/InrollUserInCourse';
  static const addAcademyReivew = 'User/AddAcademyReview';

// Academy
  static const getNearByStadiums = 'Stadium/GetNearByStadiums';
  static const getFriendsStadiums = 'Stadium/GetFriendsStadiums';
  static const getAboutStadium = 'Stadium/GetAboutStadium';

// Archive
  static const getAcademiesSubscriptionArchive =
      'Archive/AcademiesSubscriptionArchive';

// Reservation
  static const getSportStadiums = 'Reservation/GetSportStadiums';
  static const getReservedTimes =
      'Reservation/GetReservedTimes?stadiumFloorId=1';
  static const reserve = 'Reservation/Reserve';
}
