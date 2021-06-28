import 'package:flutter/material.dart';

class ButtonLarge extends StatelessWidget {
  final String? buttonTitle;
  final Function? onPressed;

  const ButtonLarge({
    Key? key,
    this.buttonTitle,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 8),
      height: 60.0,
      width: 260,
      // width: double.infinity,
      // padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xFF5F54ED),
      ),
      child: TextButton(
        onPressed: onPressed as void Function()?,
        // onPressed: () => Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => TermsPage())),
        child: Text(
          buttonTitle!,
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
    );
  }
}
