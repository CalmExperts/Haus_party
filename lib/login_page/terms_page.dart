import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haus_party/login_page/slide_page.dart';
import 'package:haus_party/login_page/utilities/constants.dart';
import 'package:haus_party/widgets/datepicker_widget.dart';

class TermsPage extends StatefulWidget {
  @override
  _TermsPageState createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  bool _rememberMe = false;
  bool _isComposingName = false;
  bool _isComposingEmail = false;
  bool _isComposingPasswordOne = false;
  bool _isComposingPasswordTwo = false;

  String myList =
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32; Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.";

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

  Widget _aboveText() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Enter DOB',
          style: TextStyle(
            color: Colors.grey,
            // fontFamily: 'OpenSans',
            fontSize: 14.0,
          ),
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

  Widget _buildLoginBtn() {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 25.0),
      width: 160,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF5F54ED),
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TextButton(
        // elevation: 5.0,
        // onPressed: () => print('Login Button Pressed'),
        onPressed: () => Navigator.pushReplacementNamed(context, '/sub'),

        // padding: EdgeInsets.all(15.0),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(30.0),
        // ),
        // color: Colors.white,

        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 1.5,
            fontSize: 18.0,
            // fontWeight: FontWeight.bold,
            // fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _agreeNow() {
    return Column(
      children: [
        SizedBox(height: 12.0),
        Container(
          // padding: EdgeInsets.symmetric(vertical: 8),
          height: 60.0,
          width: double.infinity,
          child: RaisedButton(
            // elevation: 5.0,
            // onPressed: () => print('Sign UP Button Pressed'),

            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => SlidePage())),
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Color(0xFF5F54ED),
            child: Text(
              'AGREE',
              style: TextStyle(
                // color: Color(0xFF527DAA),
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 18.0,
                // fontWeight: FontWeight.bold,
                // fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
        SizedBox(height: 12.0),
      ],
    );
  }

  Widget _dontAgree() {
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.symmetric(vertical: 8),
          height: 60.0,
          width: double.infinity,
          child: TextButton(
            child: Text(
              'DON\'T AGREE',
              style: TextStyle(
                // color: Color(0xFF527DAA),
                color: Color(0xFF5F54ED),
                decoration: TextDecoration.underline,
                // decorationStyle: TextDecorationStyle.solid,
                decorationThickness: 3,

                letterSpacing: 1.5,
                fontSize: 16.0,
                // fontWeight: FontWeight.bold,
                // fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
        SizedBox(height: 12.0),
      ],
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
                'assets/backgroundNewLogin.png',

                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                // height: 1000.0,
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                // decoration: BoxDecoration(
                //   gradient: LinearGradient(
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter,
                //     colors: [
                //       Color(0xFF73AEF5),
                //       Color(0xFF61A4F1),
                //       Color(0xFF478DE0),
                //       Color(0xFF398AE5),
                //     ],
                //     stops: [0.1, 0.4, 0.7, 0.9],
                //   ),
                // ),
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
                        'Terms & Conditions',
                        style: TextStyle(
                          color: Colors.black,
                          // fontFamily: 'OpenSans',
                          fontSize: 32.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            myList,
                            style: TextStyle(
                              color: Colors.grey,
                              // fontFamily: 'OpenSans',
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      // _buildName(),
                      // _buildEmailTF(),
                      // SizedBox(
                      //   height: 30.0,
                      // ),
                      // _buildPasswordTF(),
                      // _buildPasswordTF(),
                      // _buildForgotPasswordBtn(),
                      // _buildRememberMeCheckbox(),
                      // _buildSignInWithText(),
                      // _buildSocialBtnRow(),
                      // _buildSignupBtn(),
                      // _aboveText(),
                      // DatePickerLogin(),
                      SizedBox(height: 20.0),

                      _agreeNow(),
                      _dontAgree()

                      // _buildLoginBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
