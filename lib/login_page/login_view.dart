import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haus_party/login_page/utilities/constants.dart';
import 'package:haus_party/login_page/widgets/button_large.dart';
import 'package:haus_party/main.dart';
import 'package:haus_party/components/nav_bar.dart';
import 'package:haus_party/service/authProvider.dart';
import 'package:haus_party/core/cloud.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _rememberMe = false;
  bool _isComposingName = false;
  bool _isComposingEmail = false;
  bool _isComposingPasswordOne = false;
  bool _isComposingPasswordTwo = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 12.0),
        Container(
          alignment: Alignment.center,
          decoration: kBoxDecorationStyle,
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
          constraints: BoxConstraints(
            minHeight: 60,
          ),
          child: TextFormField(
            controller: _emailController,
            // textAlign: TextAlign.center,
            onChanged: (text) {
              setState(() {
                _isComposingEmail = text.isNotEmpty;
              });
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "email can't be empty";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              color: Colors.black,
              // fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.email,
                color: _isComposingEmail ? Colors.black : Colors.grey,
              ),
              hintText: 'Enter your email',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Text(
        //   'Password',
        //   style: kLabelStyle,
        // ),
        SizedBox(height: 12.0),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          constraints: BoxConstraints(
            minHeight: 60,
          ),
          child: TextFormField(
            controller: _passController,
            onChanged: (text) {
              setState(() {
                _isComposingPasswordOne = text.isNotEmpty;
              });
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "password can't be empty";
              }
              if (value.length < 8) {
                return "password must be at least 8 character";
              }
              return null;
            },
            textAlignVertical: TextAlignVertical.center,
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
              // fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              // contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock_open_rounded,
                color:
                    _isComposingPasswordOne ? Colors.black : Colors.grey,
              ),
              hintText: 'Enter your Password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  final formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: formKey,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  // "assets/backgroundNewLogisn.png",
                  'assets/backgroundNewLogin.png',

                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  // height: 1000.0,
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                ),
                Container(
                  height: double.infinity,
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 120.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 40.0),
                        Text(
                          'Let\'s Get Started!',
                          style: TextStyle(
                            color: Colors.black,
                            // fontFamily: 'OpenSans',
                            fontSize: 32.0,
                          ),
                        ),
                        Text(
                          'Login to your account',
                          style: TextStyle(
                            color: Colors.grey,
                            // fontFamily: 'OpenSans',
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(height: 80.0),
                        //_buildName(),
                        _buildEmailTF(),

                        _buildPasswordTF(),

                        SizedBox(height: 80.0),

                        // _buildSignUpBtn(),

                        ButtonLarge(
                          buttonTitle: 'SIGN IN',
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              try {
                                var result = await CloudFuncs().login(
                                  _emailController.text,
                                  _passController.text,
                                  context,
                                );
                                if (result == true) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      //builder: (context) => MyHomePage()
                                      builder: (context) => NavBar(),
                                    ),
                                  );
                                }
                              } catch (e) {
                                print(e);
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text("$e"),
                                      actions: [
                                        TextButton(
                                          child: Text("ok"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    );
                                  },
                                );
                              }
                            }
                          },
                        ),

                        //SizedBox(height: 20.0),

                        //_buildLoginBtn(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
