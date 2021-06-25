import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haus_party/login_page/terms_page.dart';
import 'package:haus_party/login_page/widgets/button_large.dart';
import 'package:haus_party/widgets/datepicker_widget.dart';

class BirthDayPage extends StatefulWidget {
  @override
  _BirthDayPageState createState() => _BirthDayPageState();
}

class _BirthDayPageState extends State<BirthDayPage> {
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
                        'One Last Step!',
                        style: TextStyle(
                          color: Colors.black,
                          // fontFamily: 'OpenSans',
                          fontSize: 32.0,
                        ),
                      ),
                      Text(
                        'We need to verify that you are 18+',
                        style: TextStyle(
                          color: Colors.grey,
                          // fontFamily: 'OpenSans',
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _aboveText(),
                      DatePickerLogin(),
                      SizedBox(height: 60.0),

                      // _confirmBirthdayPage(),
                      ButtonLarge(
                          buttonTitle: 'CONFIRM',
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsPage())))
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
