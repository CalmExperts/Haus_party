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
            Positioned(
                top: 150.0,
                left: 50.0,
                child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        spreadRadius: 5,
                        blurRadius: 7,
                        // offset: Offset(2,2), // changes position of shadow
                      ),
                    ], borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Premium",
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(color: Color(0xFF5F54ED)),
                            fontSize: 15.0,
                          )),
                      ]))),
            Container(
                // padding: EdgeInsets.only(top: 10.0),
                child: ClipPath(
                  clipper: CustomTriangleClipper(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.765,
                    decoration: BoxDecoration(color: Color(0xFF5F54ED)),
                  ),
                )),
          ]))
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
