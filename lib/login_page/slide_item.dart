import 'package:flutter/material.dart';
import 'package:haus_party/login_page/model/slide.dart';
import 'package:haus_party/login_page/widgets/button_editable.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  Widget _textExploringSlide() {
    return Column(
      children: [
        Text(
          slideList[index].title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28, color: Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            // fontFamily: 'OpenSans',
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }

  // Widget _buttonExploring() {
  //   return Column(
  //     children: [
  //       // SizedBox(height: 12.0),
  //       Container(
  //         // padding: EdgeInsets.symmetric(vertical: 8),
  //         height: 60.0,
  //         width: double.infinity,
  //         child: RaisedButton(
  //           // elevation: 5.0,
  //           // onPressed: () => print(slideList[index].id),
  //           // onPressed: () => Navigator.pushReplacementNamed(context, '/sub'),

  //           // onPressed: () => Navigator.push(
  //           //     context, MaterialPageRoute(builder: (context) => TermsPage())),
  //           padding: EdgeInsets.all(15.0),
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(4.0),
  //           ),
  //           color: Color(0xFF5F54ED),
  //           child: Text(
  //             'Start Exploring',
  //             style: TextStyle(
  //               // color: Color(0xFF527DAA),
  //               color: Colors.white,
  //               letterSpacing: 0.5,
  //               fontSize: 18.0,
  //               // fontWeight: FontWeight.bold,
  //               // fontFamily: 'OpenSans',
  //             ),
  //           ),
  //         ),
  //       ),
  //       // SizedBox(height: 12.0),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 64),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Container(
          //   width: 200,
          //   height: 200,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     image: DecorationImage(
          //       image: AssetImage(slideList[index].imageUrl),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 40,
          // ),
          _textExploringSlide(),
          Column(
            children: [
              // SizedBox(height: 12.0),
              //
              ButtonEditable(
                buttonTitle: 'Start Exploring',
                sizeText: 18,
                theWidth: double.infinity,
                theBorderRadius: 4,
                theHeight: 60,
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/sub'),
              )
              //
              // Container(
              //   // padding: EdgeInsets.symmetric(vertical: 8),
              //   height: 60.0,
              //   width: double.infinity,
              //   child: RaisedButton(
              //     // elevation: 5.0,
              //     // onPressed: () => print(slideList[index].id),
              //     onPressed: () =>
              //         Navigator.pushReplacementNamed(context, '/sub'),

              //     // onPressed: () => Navigator.push(
              //     //     context, MaterialPageRoute(builder: (context) => TermsPage())),
              //     padding: EdgeInsets.all(15.0),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(4.0),
              //     ),
              //     color: Color(0xFF5F54ED),
              //     child: Text(
              //       'Start Exploring',
              //       style: TextStyle(
              //         // color: Color(0xFF527DAA),
              //         color: Colors.white,
              //         letterSpacing: 0.5,
              //         fontSize: 18.0,
              //         // fontWeight: FontWeight.bold,
              //         // fontFamily: 'OpenSans',
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 12.0),
            ],
          ),
        ],
      ),
    );
  }
}
