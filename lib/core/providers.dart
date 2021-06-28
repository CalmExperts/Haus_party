import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:haus_party/models/user.dart';
import 'package:riverpod/riverpod.dart';
import 'package:http/http.dart' as http;
import 'cloud.dart';

class AuthProv {
  String? id;
  String? secretToken;
  bool? isAuthenticated;
  AuthProv({
    this.id,
    this.secretToken,
    this.isAuthenticated,
  });
}

final authProvider = FutureProvider<AuthProv>((ref) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  var id = prefs.get('id') as String?;
  var secretToken = prefs.get('secretToken') as String?;
  if (id == null && secretToken == null) {
    return AuthProv(isAuthenticated: null, id: null, secretToken: null);
  } else {
    return AuthProv(
      id: id,
      secretToken: secretToken,
      isAuthenticated: true,
    );
  }
});

final userProvider = FutureProvider<User>((ref) async {
  var id = ref.watch(authProvider).data!.value.id;

  var result = await http.get(Uri.parse(apilink + 'user?id=$id'));
  print(result.body);
  return User.fromJson(json.decode(result.body));
});
