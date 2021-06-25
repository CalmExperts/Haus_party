class BaseAPI {
  static const String liveBaseURL =
      "https://us-central1-calmevents-7de4e.cloudfunctions.net/api/v1";
  static const String localBaseUrl = "http://localhost:4000/api/v1";

  static const String baseUrl = liveBaseURL;
  static const String login = baseUrl + "/user/login";
  static const String register = baseUrl + "/user/signup";
  static const String forgotPassword = baseUrl + "/user/forgotPassword";
}
