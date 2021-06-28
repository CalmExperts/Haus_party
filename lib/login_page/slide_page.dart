import 'dart:async';

import 'package:flutter/material.dart';
import 'package:haus_party/login_page/model/slide.dart';
import 'package:haus_party/login_page/slide_item.dart';
import 'package:haus_party/login_page/widgets/slide_dots.dart';

class SlidePage extends StatefulWidget {
  @override
  _SlidePageState createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

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
  //           // onPressed: () => print('Sign UP Button Pressed'),

  //           onPressed: () => Navigator.push(
  //               context, MaterialPageRoute(builder: (context) => TermsPage())),
  //           padding: EdgeInsets.all(15.0),
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(4.0),
  //           ),
  //           color: Color(0xFF5F54ED),
  //           child: Text(
  //             'Start Explorinxg',
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
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (ctx, i) => SlideItem(i),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < slideList.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
