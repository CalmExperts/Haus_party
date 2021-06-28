import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

final encoding = Encoding.getByName('utf-8');
final header = {
  'Content-Type': 'application/json',
  "Accept": "application/json"
};
/**
 * json encode
 */
String jsonBody(Map<String, dynamic> body) {
  return json.encode(body);
}

//http://10.0.2.2:5001/calmevents-7de4e/us-central1/api/v1
String apilink =
    "https://us-central1-calmevents-7de4e.cloudfunctions.net/api/v1/";

extension myext on String {
  // ignore: non_constant_identifier_names
  Uri get API => Uri.parse("$apilink/${this}");
}

class CloudFuncs {
  //auth
  Future<dynamic> login(String email, String password) async {
    try {
      var body = {"email": email, "password": password};
      var result = await http.post(
        'login'.API,
        headers: header,
        body: jsonBody(body),
        encoding: encoding!,
      );
      print(result.body);
      print(result.statusCode);
      if (result.statusCode == 200) {
        final SharedPreferences prefs =
            await SharedPreferences.getInstance();
        var data = json.decode(result.body);
        var id = prefs.setString('id', data['id']);
        var secretToken =
            prefs.setString('secretToken', data['secretToken']);
        return true;
      } else {
        return result.body;
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  Future<dynamic> signUp(
      {String? email,
      String? password,
      String? firstName,
      String? lastName,
      String? username}) async {
    try {
      var body = {
        'email': email,
        'password': password,
        'firstName': firstName,
        'lastName': lastName,
        'username': username,
      };
      var result = await http.post("signup".API,
          headers: header, body: jsonBody(body), encoding: encoding!);
      print(result.statusCode);
      if (result.statusCode == 200) {
        return result.body;
      } else {
        throw result.body;
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  //
  Future getEvents() async {
    try {
      var result = await http.get("all".API, headers: header);
      return result.body;
    } catch (e) {
      throw e;
    }
  }

  Future getSingleEvent(String eventId) async {
    var link = Uri.parse(
        "https://us-central1-calmevents-7de4e.cloudfunctions.net/api/v1/event?id=$eventId");
    try {
      var result = await http.get(link, headers: header);
      return result;
    } catch (e) {
      throw e;
    }
  }

  Future addCard(
      {String? cardNumber,
      String? cvc,
      String? expMonth,
      String? expYear,
      String? email,
      String? userId}) async {
    var body = {
      "cardNumber": cardNumber,
      "cvc": cvc,
      "expMonth": expMonth,
      "expYear": expYear,
      "email": email,
      "userId": userId
    };
    try {
      var result = await http.post("addcard".API,
          body: jsonBody(body), encoding: encoding!, headers: header);
      print(result.body);
      print(result.statusCode);
      //
      return json.decode(result.body);
    } catch (e) {
      throw e.toString();
    }
  }
}
