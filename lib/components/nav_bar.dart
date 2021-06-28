import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haus_party/app/app.dart';
import 'package:haus_party/core/providers.dart';
import 'package:haus_party/pages/calendar_page.dart';
import 'package:haus_party/pages/profile_page.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _indiceAtual = 0;

  final List<Widget> telas = [
    MyHomePage(),
    CalendarScreen(),
    ProfilePage(),
  ];

  Widget _telaAtual = MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      final user = watch(userProvider);
      return Scaffold(
        body: user.maybeWhen(
          error: (error, stackTrace) => Center(
            child: Text("$error"),
          ),
          loading: () => Center(child: CircularProgressIndicator()),
          orElse: () => Center(child: CircularProgressIndicator()),
          data: (value) {
            print(value.firstName);
            return Scaffold(
                body: telas[_indiceAtual],
                bottomNavigationBar: SafeArea(
                  bottom: true,
                  child: BottomAppBar(
                    //elevation: 8,
                    /*shape: CircularNotchedRectangle(),
                                notchMargin: 7,*/
                    color: Colors.white,
                    child: Container(
                      height: 55,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          MaterialButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {
                              setState(() {
                                _telaAtual = MyHomePage();
                                _indiceAtual = 0;
                              });
                            },
                            child: Center(
                              child: Icon(
                                Icons.my_location,
                                //color: Colors.black,
                                color: _indiceAtual == 0
                                    ? Color(0xFF8275e0)
                                    : Colors.black,
                                size: 25,
                              ),
                            ),
                          ),
                          MaterialButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {
                              setState(() {
                                _telaAtual = CalendarScreen();
                                _indiceAtual = 1;
                              });
                            },
                            child: Center(
                              child: Icon(
                                Icons.date_range,
                                color: _indiceAtual == 1
                                    ? Color(0xFF8275e0)
                                    : Colors.black,
                                size: 25,
                              ),
                            ),
                          ),
                          MaterialButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {
                              setState(() {
                                _telaAtual = ProfilePage();
                                _indiceAtual = 2;
                              });
                            },
                            child: Center(
                              child: Icon(
                                Icons.person_outline_sharp,
                                color: _indiceAtual == 2
                                    ? Color(0xFF8275e0)
                                    : Colors.black,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
          },
        ),
      );
    });
  }
}
