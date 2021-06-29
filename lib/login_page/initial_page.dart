import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haus_party/login_page/login_page.dart';
import 'package:haus_party/login_page/login_view.dart';
import 'package:haus_party/login_page/utilities/constants.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {

  Widget _finalButtons() {
    return Column(
      children: [
        //  _buildSignUpBtn(),
        SizedBox(
          height: 8,
        ),
        _buildLoginBtn,
        SizedBox(
          height: 8,
        ),
        _signUpButton(),
      ],
    );
  }

  Widget _initialTexts() {
    return Column(
      children: [
        Text(
          'Welcome',
          style: TextStyle(
              color: Colors.white,
              // fontFamily: 'OpenSans',
              fontSize: 26.0,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Let\'s get the party started',
          style: TextStyle(
            color: Colors.white70,
            // fontFamily: 'OpenSans',
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }







  Widget get _buildLoginBtn {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginView()),
            );
          },
          /*onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (context) => MyHomePage()
                ),
                    (Route<dynamic> route) => false
            );
          },*/
          child: Container(
            alignment: Alignment.center,
            height: 60.0,
            width: double.infinity,
            // width: double.infinity,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xFF8275e0),
            ),
            child: Text(
              'Sign in with E-mail',
              style: TextStyle(
                // color: Color(0xFF527DAA),
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 16.0,
                // fontWeight: FontWeight.bold,
                // fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _signUpButton() {
    return GestureDetector(
      child: Text(
        'Don\'t have an account? Sign up.',
        style: TextStyle(
          // color: Color(0xFF527DAA),
          color: Colors.white,
          letterSpacing: 1.5,
          fontSize: 16.0,
          // fontWeight: FontWeight.bold,
          // fontFamily: 'OpenSans',
        ),
      ),
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen())),
    );
  }


  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Image.asset(
                // "assets/backgroundNewLogisn.png",
                'assets/backgroundInital.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 20.0,
                ),
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      height: 8.0,
                    ),
                    _initialTexts(),
                    // SizedBox(height: 300.0),
                    // _buildName(),
                    // _buildEmailTF(),
                    SizedBox(
                      height: 8.0,
                    ),
                    // _buildPasswordTF(),
                    // _buildPasswordTF(),
                    // _buildForgotPasswordBtn(),
                    // _buildRememberMeCheckbox(),
                    // _buildSignInWithText(),
                    // _buildSocialBtnRow(),
                    // _buildSignupBtn(),
                    // SizedBox(height: 280.0),

                    _finalButtons()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
