import 'package:hive/hive.dart';
import 'package:riverpod/riverpod.dart';

class AuthProv {
  String id;
  String secretToken;
  bool isAuthenticated;
  AuthProv({
    this.id,
    this.secretToken,
    this.isAuthenticated,
  });
}

final authProvider = StateProvider<AuthProv>((ref) {
  var box = Hive.box("auth");
  var id = box.get("id");
  var secretToken = box.get("secretToken");
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
