class Welcomekeys {
  static const sportId = 'sportId';
  static const name = 'sportName';
  static const token = 'authResult/token';
}

class AuthKeys {
  // UserProfileEntity keys
  static const String user = 'user';
  static const String userId = 'userId';
  static const String loyaltyPoints = 'loyaltyPoints';
  static const String name = 'name';
  static const String email = 'email';
  static const String phone = 'phone';
  static const String gender = 'gender';
  static const String longitude = 'longitude';
  static const String latitude = 'latitude';
  static const String imgURL = 'imgURL';
  static const String favoriteSports = 'favoriteSports';
  static const String currentSport = 'currentSport';
  static const String followers = 'followers';
  static const String following = 'following';

  // FavoriteSportEntity keys
  static const String sportId =
      'id'; // Note: Adjusted based on your JSON structure
  static const String sportName = 'name';
  static const String isCurrentState = 'isCurrentState';
  static const String preferences = 'preferences';

  // SportPreferenceEntity keys
  static const String sportPreferenceId = 'sportPreferenceId';
  static const String sportPreferenceName = 'sportPreferenceName';
  static const String sportPreferenceValues = 'sportPreferenceValues';
  static const String selectedPreferenceValueId = 'selectedPreferenceValueId';

  // SportPreferenceValueEntity keys
  static const String sportPreferenceValueId = 'sportPreferenceValueId';
  static const String sportPreferenceValueName = 'sportPreferenceValueName';

  // CurrentSportEntity keys
  static const String currentSportId = 'currentSportId';
  static const String points = 'points';
  static const String levelPercent = 'levelPercent';
  static const String userLevel = 'userLevel';
  static const String numOfMatches = 'numOfMatchs';
  // Level Keys
  static const String levelName = 'levelName';
  static const String levelMaxPoints = 'levelMaxPoints';
  static const String levels = 'levels';
}
