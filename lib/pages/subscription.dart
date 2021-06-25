import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   actions: [
        //     FloatingActionButton(
        //       elevation: 10.0,
        //       child: Icon(Icons.close),
        //       backgroundColor: Color(0xFF5F54ED),
        //       onPressed: () {
        //         Navigator.pushReplacementNamed(context, '/');
        //       }
        //     )
        //   ],
        // ),

        body: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: <Widget>[
          Container(
              child: Column(children: <Widget>[
            SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RawMaterialButton(
                  elevation: 5.0,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  fillColor: Color(0xFF5F54ED),
                  shape: CircleBorder(),
                  child: Icon(Icons.close, color: Colors.white),
                )
              ],
            ),
            Container(
                // padding: EdgeInsets.only(top: 10.0),
                child: ClipPath(
              clipper: CustomTriangleClipper(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8175,
                decoration: BoxDecoration(color: Color(0xFF5F54ED)),
              ),
            )),
          ])),
          Positioned(
              top: 120.0,
              left: 140.0,
              child: Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.1, color: Colors.grey),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200],
                          spreadRadius: 5,
                          blurRadius: 7,
                          // offset: Offset(2,2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Premium",
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(color: Color(0xFF5F54ED)),
                              fontSize: 20.0,
                            )),
                      ]))),
          Positioned(
            top: 200,
            left: 50,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: [
                            Text("\$10",
                                style: GoogleFonts.lato(
                                    color: Colors.white, fontSize: 40.0)),
                            Text("/month",
                                style: GoogleFonts.lato(
                                    color: Colors.white, fontSize: 20.0))
                          ],
                        )),
                    Text("Premium membership gives the following benefits",
                        style: GoogleFonts.lato(
                            color: Colors.white, fontSize: 12.0)),
                  ],
                )),
          ),
          Positioned(
            bottom: 200,
            left: 50,
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.check, color: Colors.black, size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("All Access Pass to Parties",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 15.0,
                            )),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.check, color: Colors.black, size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("Early bird updates",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 15.0,
                            )),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.check, color: Colors.black, size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("Free Bus ride to Party Venues",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 15.0,
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 100,
              left: 120,
              child: RaisedButton(
                elevation: 15.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                color: Colors.white,
                // mouseCursor: ,
                child: Text("Yes I'm In",
                    style: GoogleFonts.lato(
                        color: Color(0xFF5F54ED), fontSize: 15.0)),
                onPressed: () {},
              )),
        ]));
  }
}

class CustomTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, (size.height / 6));
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// class TrianglePainter extends CustomPainter {
//   final Color strokeColor;
//   final PaintingStyle paintingStyle;
//   final double strokeWidth;

//   TrianglePainter(
//       {this.strokeColor = Colors.black,
//       this.strokeWidth = 3,
//       this.paintingStyle = PaintingStyle.stroke});

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = strokeColor
//       ..strokeWidth = strokeWidth
//       ..style = paintingStyle;

//     canvas.drawPath(getTrianglePath(size.width, size.height), paint);
//   }

//   Path getTrianglePath(double x, double y) {
//     return Path()
//       ..moveTo(0, y)
//       ..lineTo(x / 2, 0)
//       ..lineTo(x, y)
//       ..lineTo(0, y);
//   }

//   @override
//   bool shouldRepaint(TrianglePainter oldDelegate) {
//     return oldDelegate.strokeColor != strokeColor ||
//         oldDelegate.paintingStyle != paintingStyle ||
//         oldDelegate.strokeWidth != strokeWidth;
//   }
// }
