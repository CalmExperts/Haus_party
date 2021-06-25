class Api {

  ///Auth
  static const String baseUrl = 'https://us-central1-calmevents-7de4e.cloudfunctions.net/api/v1/';

  static const String signup = 'signup';
  static const String urlSignup = baseUrl + signup;

  static const String login = 'login';
  static const String urlLogin = baseUrl + login;

  static const String user = 'user';
  static const String urlUser = baseUrl + user;

  ///Events
  static const String events = 'https://us-central1-calmevents-7de4e.cloudfunctions.net/api/v1/all';

}