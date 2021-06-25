import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haus_party/controllers/login_controller.dart';
import 'package:haus_party/login_page/login_page.dart';
import 'package:haus_party/login_page/login_view.dart';
import 'package:haus_party/login_page/utilities/constants.dart';
import 'package:haus_party/main.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  bool _rememberMe = false;
  bool _isComposingName = false;
  bool _isComposingEmail = false;
  bool _isComposingPasswordOne = false;
  bool _isComposingPasswordTwo = false;

  Widget _finalButtons() {
    return Column(
      children: [
        _buildSignUpBtn(),
        SizedBox(height: 8,),
        _buildLoginBtn,
        SizedBox(height: 8,),
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

  Widget _buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 12.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            onChanged: (text) {
              setState(() {
                _isComposingName = text.isNotEmpty;
              });
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
          child: TextField(
            // textAlign: TextAlign.center,
            onChanged: (text) {
              setState(() {
                _isComposingEmail = text.isNotEmpty;
              });
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
          child: TextField(
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
            decoration: InputDecoration(
              border: InputBorder.none,
              // contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock_open_rounded,
                color: _isComposingPasswordOne ? Colors.black : Colors.grey,
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
          child: TextField(
            onChanged: (text) {
              setState(() {
                _isComposingPasswordTwo = text.isNotEmpty;
              });
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
                color: _isComposingPasswordTwo ? Colors.black : Colors.grey,
              ),
              hintText: 'Re-enter your Password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpBtn() {
    return Column(
      children: [
        TextButton(
          onPressed: () {},

          child: Container(
            alignment: Alignment.center,
            height: 60.0,
            width: double.infinity,
            // width: double.infinity,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.white,
            ),
            child: Text(
              'Sign in with Google',
              style: TextStyle(
                // color: Color(0xFF527DAA),
                color: Color(0xFF5F54ED),
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

  Widget get _buildLoginBtn {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginView())
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
          context, MaterialPageRoute(builder: (context) => LoginScreen())
      ),
    );
  }

  Widget _buildSignInWithText() {
    return Column(
      children: <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign in with',
          style: kLabelStyle,
        ),
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
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

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Facebook'),
            AssetImage(
              'assets/asset-2.png',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'assets/asset-1.png',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () => print('Sign Up Button Pressed'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
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
