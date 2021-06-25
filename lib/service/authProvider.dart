import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:haus_party/model/user.dart';
import 'package:haus_party/service/authApi.dart';
import 'package:haus_party/util/sharedPreferences.dart';
import 'package:http/http.dart';

enum Status {
  NotLoggedIn,
  NotRegistered,
  LoggedIn,
  Registered,
  Authenticating,
  Registering,
  LoggedOut
}

class AuthProvider with ChangeNotifier {
  Status _loggedInStatus = Status.NotLoggedIn;
  Status _registeredInStatus = Status.NotRegistered;

  Status get loggedInStatus => _loggedInStatus;
  Status get registeredInStatus => _registeredInStatus;

  Future<Map<String, dynamic>> login(String email, String password) async {
    var result;

    final Map<String, dynamic> loginData = {
      'email': email,
      'password': password
    };

    _loggedInStatus = Status.Authenticating;
    notifyListeners();

    var response = await post(
      BaseAPI.login,
      body: json.encode(loginData),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);

      Auth token = Auth.fromJson(responseData);
      var userData = responseData['user'];
      User authUser = User.fromJson(userData);

      UserPreferences().saveUser(authUser);
      AuthPreferences().saveToken(token);

      _loggedInStatus = Status.LoggedIn;
      notifyListeners();

      result = {'status': true, 'message': 'Successful', 'user': authUser};
    } else {
      _loggedInStatus = Status.NotLoggedIn;
      notifyListeners();
      result = {
        'status': false,
        'message': json.decode(response.body)['error']
      };
    }
    return result;
  }

  Future<Map<String, dynamic>> register(String email, String password,
      String firstName, String lastName, String username) async {
    final Map<String, dynamic> registrationData = {
      'email': email,
      'password': password,
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
    };

    _registeredInStatus = Status.Registering;
    notifyListeners();

    return await post(BaseAPI.register,
            body: json.encode(registrationData),
            headers: {'Content-Type': 'application/json'})
        .then(onValue)
        .catchError(onError);
  }

  static Future<FutureOr> onValue(Response response) async {
    var result;
    final Map<String, dynamic> responseData = json.decode(response.body);

    if (response.statusCode == 201) {
      var userData = responseData['user'];

      User authUser = User.fromJson(userData);

      UserPreferences().saveUser(authUser);
      result = {
        'status': true,
        'message': 'Successfully registered',
        'data': authUser
      };
    } else {
      result = {
        'status': false,
        'message': 'Registration failed',
        'data': responseData
      };
    }

    return result;
  }

  static onError(error) {
    print("the error is $error.detail");
    return {
      'status': false,
      'message': 'Unsuccessful Request',
      'data': error
    };
  }
}
