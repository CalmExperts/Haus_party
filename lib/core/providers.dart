import 'dart:convert';
import 'package:hive/hive.dart';
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

final authProvider = StateProvider<AuthProv>((ref) {
  Box box = Hive.box("prefs");
  String? id = box.get("id");
  String? secretToken = box.get("secretToken");
  if (id != null && secretToken != null) {
    return AuthProv(
        id: id, secretToken: secretToken, isAuthenticated: true);
  }
  return AuthProv(id: null, secretToken: null, isAuthenticated: false);
});

final userProvider = FutureProvider<User?>((ref) async {
  var id = ref.watch(authProvider).state.id;
  if (id != null) {
    var id = ref.watch(authProvider).state.id;

    var result = await http.get(Uri.parse(apilink + '/user?id=$id'));
    print(result.body);
    return User.fromJson(json.decode(result.body));
  } else {
    return null;
  }
});
