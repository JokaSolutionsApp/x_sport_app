// ignore_for_file: constant_identifier_names

enum RequestState {
  initial,
  loading,
  loaded,
  error,
}

enum State {
  initial,
  loading,
  userMessage,
  botMessage,
  error,
}

enum UserAuthState {
  otp,
  loggedIn,
  registerWithEmailAndPassword,
  guest,
  welcome,
  error,
  registredWithGoogle,
  comletedRegistrationWithGoogle,
  profilePictureSkipped,
  RegistrationFinished,
}

enum SuggestionsState {
  loading,
  hidden,
  valid,
  notValid,
}

enum EmailAuthState {
  Authenticating,
  authEmail,
  notAuthEmail,
}

enum VerifiedAccountState {
  verifing,
  isVerified,
  isNotVerified,
}
