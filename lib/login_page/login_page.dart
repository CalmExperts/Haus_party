import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haus_party/components/nav_bar.dart';
import 'package:haus_party/core/cloud.dart';
import 'package:haus_party/login_page/utilities/constants.dart';
import 'package:haus_party/login_page/widgets/button_large.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  bool _isComposingName = false;
  bool _isComposingEmail = false;
  bool _isComposingPasswordOne = false;
  bool _isComposingPasswordTwo = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();
  final TextEditingController passwordR = TextEditingController();

  Widget _buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 12.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            controller: nameC,
            onChanged: (text) {
              setState(() {
                _isComposingName = text.isNotEmpty;
              });
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "can't be empty";
              }
              return null;
            },
            // textAlign: TextAlign.center,
            keyboardType: TextInputType.emailAddress,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              color: Colors.black,
              // fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              // contentPadding: EdgeInsets.only(
              //   top: 14.0,
              // ),
              prefixIcon: Icon(
                Icons.person_outline,
                color: _isComposingName ? Colors.black : Colors.grey,
              ),

              hintText: 'Your Name',
              hintStyle: kHintTextStyle,
              focusColor: Colors.red,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 12.0),
        Container(
          alignment: Alignment.center,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            controller: emailC,
            // textAlign: TextAlign.center,
            onChanged: (text) {
              setState(() {
                _isComposingEmail = text.isNotEmpty;
              });
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "can't be empty";
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
              hintText: 'Enter your Email',
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
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            controller: passwordC,
            onChanged: (text) {
              setState(() {
                _isComposingPasswordOne = text.isNotEmpty;
              });
            },
            textAlignVertical: TextAlignVertical.center,
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
              // fontFamily: 'OpenSans',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "can't be empty";
              }
              return null;
            },
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
        SizedBox(height: 12.0),

        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            controller: passwordR,
            onChanged: (text) {
              setState(() {
                _isComposingPasswordTwo = text.isNotEmpty;
              });
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "can't be empty";
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
                Icons.lock_outlined,
                color:
                    _isComposingPasswordTwo ? Colors.black : Colors.grey,
              ),
              hintText: 'Re-enter your Password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
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
                        Text(
                          'Let\'s Get Started!',
                          style: TextStyle(
                            color: Colors.black,
                            // fontFamily: 'OpenSans',
                            fontSize: 32.0,
                          ),
                        ),
                        Text(
                          'Create on account to get started',
                          style: TextStyle(
                            color: Colors.grey,
                            // fontFamily: 'OpenSans',
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(height: 40.0),
                        _buildName(),
                        _buildEmailTF(),

                        _buildPasswordTF(),

                        SizedBox(height: 60.0),

                        // _buildSignUpBtn(),

                        ButtonLarge(
                          buttonTitle: 'SIGN UP',
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              /*  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BirthDayPage()),
                              );
                            */
                              try {
                                var result = await CloudFuncs().signUp(
                                    email: emailC.text,
                                    firstName: nameC.text,
                                    lastName: nameC.text,
                                    password: passwordC.text,
                                    username: nameC.text);
                                print(result);
                                if (result != null) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      //builder: (context) => MyHomePage()
                                      builder: (context) => NavBar(),
                                    ),
                                  );
                                }
                              } catch (e) {
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

                        SizedBox(height: 20.0),

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
