import 'package:flutter/material.dart';

class ButtonsProfile extends StatelessWidget {
  final String? buttonTitle;
  final String? buttonDescription;
  final Function? onPressed;

  const ButtonsProfile(
      {Key? key, this.buttonTitle, this.onPressed, this.buttonDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 50.0,
      width: 290,
      // width: double.infinity,
      // padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFF5F54ED),
      ),
      child: TextButton(
        onPressed: onPressed as void Function()?,
        // onPressed: () => Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => TermsPage())),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  buttonTitle!,
                  style: TextStyle(
                    // color: Color(0xFF527DAA),
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 16.0,
                    // fontWeight: FontWeight.bold,
                    // fontFamily: 'OpenSans',
                  ),
                ),
                buttonDescription != null
                    ? Text(
                        buttonDescription!,
                        style: TextStyle(
                          // color: Color(0xFF527DAA),
                          color: Colors.grey[400],
                          // letterSpacing: 1.5,
                          fontSize: 12.0,
                          // fontWeight: FontWeight.bold,
                          // fontFamily: 'OpenSans',
                        ),
                      )
                    : SizedBox(),
              ],
            ),
            Icon(
              Icons.play_arrow,
              color: Colors.white,
            )
          ],
        ),
      ),
    );

    // Container(
    //                     width: MediaQuery.of(context).size.width * 0.8,
    //                     height: MediaQuery.of(context).size.height * 0.07,
    //                     child: RaisedButton(
    //                       color: Color(0xFF5F54ED),
    //                       shape: RoundedRectangleBorder(
    //                           borderRadius: new BorderRadius.all(
    //                               new Radius.circular(5.0))),
    //                       onPressed: () {
    //                         Navigator.push(
    //                             context,
    //                             MaterialPageRoute(
    //                                 builder: (context) => CardDetails()));
    //                       },
    //                       child: Row(
    //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                         children: <Widget>[
    //                           Column(
    //                             mainAxisAlignment: MainAxisAlignment.start,
    //                             crossAxisAlignment: CrossAxisAlignment.start,
    //                             children: <Widget>[
    //                               SizedBox(
    //                                 height: 10.0,
    //                               ),
    //                               Text(
    //                                 "Payment",
    //                                 style: TextStyle(
    //                                   color: Colors.white,
    //                                   fontWeight: FontWeight.bold,
    //                                 ),
    //                               ),
    //                               Text(
    //                                 "Visa card **** **** **** 8909",
    //                                 style: TextStyle(
    //                                     color: Colors.white,
    //                                     fontSize: 10.0,
    //                                     fontWeight: FontWeight.normal),
    //                               )
    //                             ],
    //                           ),
    //                           Icon(
    //                             Icons.play_arrow,
    //                             color: Colors.white,
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                   ),
  }
}
