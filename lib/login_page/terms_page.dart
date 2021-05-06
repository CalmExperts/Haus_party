import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haus_party/login_page/slide_page.dart';
import 'package:haus_party/login_page/utilities/constants.dart';
import 'package:haus_party/login_page/widgets/button_large.dart';
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

  Widget _dontAgree() {
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.symmetric(vertical: 8),
          height: 60.0,
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
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
                      SizedBox(height: 40.0),
                      ButtonLarge(
                          buttonTitle: 'AGREE',
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SlidePage()))),
                      _dontAgree()
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
