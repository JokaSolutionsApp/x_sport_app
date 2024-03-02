class ApiConstance {
  // home 192.168.2.10
  // work 192.168.1.90

  static const baseUrl =
      'http://xsportapi-dev.us-east-1.elasticbeanstalk.com/api/';

  static const signInApi = '/login';
  static const registerApi = 'User/Register';
  static const validateAccountApi = '/Verification/emailVerification';
  static const getSportsApi = '/get_sport';
  static const sendImageAndSportsApi = '/user_details';
  static const getUserInfoApi = '/get_user_with_token';
  static const updateUserPreferncesApi = '/preferences';
  static const updateUserProfileApi = '/update_user_prodile';
  static const updateHandPreferenceApi = '/hand_preference';
  static const updatePositionPreferenceApi = '//postion_preference';
  static const updateTimePreferenceApi = '/time_preference';
}
