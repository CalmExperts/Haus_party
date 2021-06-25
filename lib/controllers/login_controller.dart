import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:haus_party/constants/api.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class LoginController extends GetxController {



  //****************************CONTROLLERS*************************************
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerLastName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerConfirmPassword = TextEditingController();



  //****************************SIGNUP USER*************************************
  Future <void> signupUser () async {

    //http.Response response = await http.get(Uri.parse(urlSignup));
    http.Response response = await http.post(
        Uri.parse(Api.urlSignup),
      body: {
        "firstName": controllerName.text,
        "lastName": controllerLastName.text,
        "username": controllerName.text + controllerLastName.text,
        "email": controllerEmail.text,
        "password": controllerPassword.text
      }
    );

    print('testeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee inicio');
    print('message é:    ' + json.decode(response.body)['message'] ?? 'message é nulo');
    if (json.decode(response.body)['message'] == 'user already exists maybe login?') {
      print('error é:    ' + json.decode(response.body)['error'] ?? 'error é nulo');
    }
    else {
      print('id é:    ' + json.decode(response.body)['id'] ?? 'id é nulo');
      print('firstName é:    ' + json.decode(response.body)['data']['firstName'] ?? 'firstName é nulo');
      print('lastName é:    ' + json.decode(response.body)['data']['lastName'] ?? 'lastName é nulo');
      print('username é:    ' + json.decode(response.body)['data']['username'] ?? 'username é nulo');
      print('email é:    ' + json.decode(response.body)['data']['email'] ?? 'email é nulo');
    }
    print('testeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee fim');


    //update();

  }



  //****************************GET API EVENTS**********************************
  List eventsList = [];

  Future<void> getApiEvents () async {

    http.Response response = await http.get(
      Uri.parse(Api.events),
    );

    eventsList = json.decode(response.body);

    print('testeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee inicio');
    print(json.decode(response.body)['id']);
    print(json.decode(response.body)['data']['title']);
    print('testeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee fim');


  }



}