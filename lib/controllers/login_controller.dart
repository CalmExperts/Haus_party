import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class LoginController extends GetxController {



  static const String baseUrl = 'https://us-central1-calmevents-7de4e.cloudfunctions.net/api/v1/';

  static const String signup = 'signup';
  static const String urlSignup = baseUrl + signup;

  static const String login = 'login';
  static const String urlLogin = baseUrl + login;

  static const String user = 'user';
  static const String urlUser = baseUrl + user;



  Future <void> signupUser () async {

    //http.Response response = await http.get(Uri.parse(urlSignup));
    http.Response response = await http.post(
        Uri.parse(urlSignup),
      body: {
        "firstName": "hhh",
        "lastName": "abbbb",
        "username": "djdjs",
        "email": "hayder@hayder.com",
        "password": "123456778h"
      }
    );

    print(json.decode(response.body)['error']);
    print(json.decode(response.body)['message']);
    print('are babaaaaaaaaaaaaaa');
    print('tche tche cole');


    //update();

  }

}