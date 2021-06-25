import 'package:flutter/material.dart';
import 'package:haus_party/login_page/initial_page.dart';
import 'package:haus_party/login_page/login_page.dart';
import 'package:haus_party/model/user.dart';
import 'package:haus_party/service/authProvider.dart';
import 'package:haus_party/util/userProvider.dart';
import 'package:provider/provider.dart';
import 'package:flushbar/flushbar.dart';
// import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthPage extends StatefulWidget {
  static final String path = "lib/src/pages/login/auth3.dart";

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool formVisible;
  int _formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);
    return InitialPage();
    // return LoginScreen();

    // Scaffold(
    //     body: Container(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage('assets/party_background.jpg'),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    //   child: Stack(
    //     children: <Widget>[
    //       Container(
    //         color: Colors.black54,
    //         child: Column(
    //           children: <Widget>[
    //             const SizedBox(height: kToolbarHeight + 40),
    //             Expanded(
    //               child: Column(
    //                 children: <Widget>[
    //                   Text(
    //                     "Haus Party",
    //                     style: TextStyle(
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.w500,
    //                       fontSize: 30.0,
    //                     ),
    //                   ),
    //                   const SizedBox(height: 10.0),
    //                   Text(
    //                     "Welcome to HausParty",
    //                     style: TextStyle(
    //                       color: Colors.white70,
    //                       fontSize: 18.0,
    //                     ),
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             const SizedBox(height: 10.0),
    //             Row(
    //               children: <Widget>[
    //                 const SizedBox(width: 10.0),
    //                 Expanded(
    //                   child: RaisedButton(
    //                     color: Colors.red,
    //                     textColor: Colors.white,
    //                     elevation: 0,
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(20.0),
    //                     ),
    //                     child: Text("Login"),
    //                     onPressed: () {
    //                       setState(() {
    //                         formVisible = true;
    //                         _formsIndex = 1;
    //                       });
    //                     },
    //                   ),
    //                 ),
    //                 const SizedBox(width: 10.0),
    //                 Expanded(
    //                   child: RaisedButton(
    //                     color: Colors.grey.shade700,
    //                     textColor: Colors.white,
    //                     elevation: 0,
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(20.0),
    //                     ),
    //                     child: Text("Register"),
    //                     onPressed: () {
    //                       setState(() {
    //                         formVisible = true;
    //                         _formsIndex = 2;
    //                       });
    //                     },
    //                   ),
    //                 ),
    //                 const SizedBox(width: 10.0),
    //               ],
    //             ),
    //             const SizedBox(height: 40.0),
    //             // OutlineButton.icon(
    //             //   borderSide: BorderSide(color: Colors.red),
    //             //   color: Colors.red,
    //             //   textColor: Colors.white,
    //             //   shape: RoundedRectangleBorder(
    //             //     borderRadius: BorderRadius.circular(20.0),
    //             //   ),
    //             //   icon: Icon(Ic),
    //             //   label: Text("Continue with Google"),
    //             //   onPressed: () {},
    //             // ),
    //             const SizedBox(height: 30.0),
    //           ],
    //         ),
    //       ),
    //       AnimatedSwitcher(
    //         duration: Duration(milliseconds: 200),
    //         child: (!formVisible)
    //             ? null
    //             : Container(
    //                 color: Colors.black54,
    //                 alignment: Alignment.center,
    //                 child: Column(
    //                   mainAxisSize: MainAxisSize.min,
    //                   children: <Widget>[
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: <Widget>[
    //                         RaisedButton(
    //                           textColor: _formsIndex == 1
    //                               ? Colors.white
    //                               : Colors.black,
    //                           color:
    //                               _formsIndex == 1 ? Colors.red : Colors.white,
    //                           child: Text("Login"),
    //                           shape: RoundedRectangleBorder(
    //                               borderRadius: BorderRadius.circular(20.0)),
    //                           onPressed: () {
    //                             setState(() {
    //                               _formsIndex = 1;
    //                             });
    //                           },
    //                         ),
    //                         const SizedBox(width: 10.0),
    //                         RaisedButton(
    //                           textColor: _formsIndex == 2
    //                               ? Colors.white
    //                               : Colors.black,
    //                           color:
    //                               _formsIndex == 2 ? Colors.red : Colors.white,
    //                           child: Text("Register"),
    //                           shape: RoundedRectangleBorder(
    //                               borderRadius: BorderRadius.circular(20.0)),
    //                           onPressed: () {
    //                             setState(() {
    //                               _formsIndex = 2;
    //                             });
    //                           },
    //                         ),
    //                         const SizedBox(width: 10.0),
    //                         IconButton(
    //                           color: Colors.white,
    //                           icon: Icon(Icons.clear),
    //                           onPressed: () {
    //                             setState(() {
    //                               formVisible = false;
    //                             });
    //                           },
    //                         )
    //                       ],
    //                     ),
    //                     Container(
    //                       child: AnimatedSwitcher(
    //                         duration: Duration(milliseconds: 300),
    //                         child:
    //                             _formsIndex == 1 ? LoginForm() : RegisterForm(),
    //                       ),
    //                     )
    //                   ],
    //                 ),
    //               ),
    //       )
    //     ],
    //   ),
    // ));
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = new GlobalKey<FormState>();

  String _email, _password;

  var loading = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      CircularProgressIndicator(),
      Text(" Authenticating ... Please wait")
    ],
  );

  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);
    final form = formKey.currentState;
    var doLogin = () {
      if (form.validate()) {
        form.save();

        final Future<Map<String, dynamic>> successfulMessage =
            auth.login(_email, _password);

        successfulMessage.then((response) {
          if (response['status']) {
            User user = response['user'];
            print(user);
            Provider.of<UserProvider>(context, listen: false)
                .setUser(user);
            Navigator.pushReplacementNamed(context, '/sub');
          } else {
            Flushbar(
              title: "Failed Login",
              message: response['message']['message'].toString(),
              duration: Duration(seconds: 3),
            ).show(context);
          }
        });
      } else {
        print("form is invalid");
      }
    };

    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Form(
        key: formKey,
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              onSaved: (value) => _email = value,
              decoration: InputDecoration(
                hintText: "Enter email",
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return "email can't be empty";
                }
                return value;
              },
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              obscureText: true,
              validator: (value) =>
                  value.isEmpty ? "Please enter password" : null,
              onSaved: (value) => _password = value,
              decoration: InputDecoration(
                hintText: "Enter password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10.0),
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text("Login"),
              onPressed: () {
                print(form.validate());
                // Navigator.pushReplacementNamed(context, '/');
                //Navigator.pushReplacementNamed(context, '/sub');
                if (form.validate()) {
                  Navigator.pushReplacementNamed(context, '/sub');
                } else {
                  //
                }
                // doLogin();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Enter First Name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Last Name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Username",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text("Register"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
