import 'dart:async';
// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:haus_party/controllers/login_controller.dart';
import 'package:haus_party/controllers/login_controller.dart';
import 'package:haus_party/home_cards.dart';
import 'package:haus_party/home_page_alt.dart';
import 'package:haus_party/login_page/widgets/responsives/horizontal_card.dart';
import 'package:haus_party/routing.dart';
import 'package:haus_party/service/authProvider.dart';
import 'package:haus_party/util/userProvider.dart';
import 'package:haus_party/widgets/datepicker_login.dart';
import 'package:haus_party/widgets/datepicker_widget.dart';
import 'package:haus_party/widgets/dropdown_widget.dart';
import 'package:haus_party/widgets/only_slyde_picker.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'bottom_bar.dart';
import 'controllers/login_controller.dart';
import 'location_settings.dart';
import 'login_page/widgets/responsives/vertical_card.dart';

// void main() => runApp(MyApp());

// void main() {
//   runApp(DevicePreview(builder: (_) => MyApp(),
//   enabled: true,
//   ));
// }
//
void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        localizationsDelegates: [
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate
        ],
        supportedLocales: [Locale("en", "US")],
        debugShowCheckedModeBanner: false,
        title: 'Haus Party',
        initialRoute: '/auth',
        routes: routes,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        // builder: DevicePreview.appBuilder,
        // locale: DevicePreview.locale(context),
        home: MyHomePage(
          title: 'Haus Party',
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    LoginController().getApiEvents();
    print('testeeeeeeeeeeeeeeeeee');
    print(LoginController().eventsList.length.toString());
  }

  // List listItem = ["Rio de Janeiro", "São Paulo", "Recife", "Florianópolis"];
  // String valueChoose;

  @override
  Widget build(BuildContext context) {
    _dialogHorizontal() {
      return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.7),
                spreadRadius: 80,
                blurRadius: 25,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          // color: Colors.transparent,
          // height: 400,
          child: Padding(
              padding: EdgeInsets.all(1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // DropDownWidget(),
                  // DatePickerWidget(),

                  Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(
                            Icons.cancel_outlined,
                            color: Colors.white,
                            size: 26,
                          ),
                        )
                      ]),
                  SizedBox(),

                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: DropDownWidget()),
                          SizedBox(
                            width: 32,
                          ),
                          Expanded(child: DatePickerWidget()),
                        ],
                      ),
                      // SizedBox(height: 20),
                      SizedBox(height: 20),

                      // SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: Text("Enter Search Radius",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ),
                          OnlySlidePicker(),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),

                  // SizedBox(),

                  Column(
                    children: [
                      Container(
                          width: 260,
                          height: 48,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                fontSize: 18,
                                backgroundColor: Colors.white,
                                color: Color(0xFF5F54ED),
                              ),
                            ),
                          )),
                    ],
                  )
                ],
              )));

//---------- certo acima

      // return Container(
      //   color: Colors.transparent,
      //   child: Padding(
      //       padding: EdgeInsets.all(2.0),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           DropDownWidget(),
      //           SizedBox(height: 8),
      //           DatePickerWidget(),
      //           SizedBox(height: 8),
      //           Text("Enter Search Radius",
      //               style: TextStyle(color: Colors.white, fontSize: 18)),
      //           SizedBox(height: 2),
      //           OnlySlidePicker(),
      //           SizedBox(height: 8),
      //           Container(
      //               width: 200,
      //               height: 40,
      //               decoration: BoxDecoration(
      //                   color: Colors.white,
      //                   borderRadius: BorderRadius.all(Radius.circular(8))),
      //               child: TextButton(
      //                 onPressed: () {
      //                   Navigator.pop(context);
      //                 },
      //                 child: Text(
      //                   'Continue',
      //                   style: TextStyle(
      //                     fontSize: 18,
      //                     backgroundColor: Colors.white,
      //                     color: Color(0xFF5F54ED),
      //                   ),
      //                 ),
      //               ))
      //         ],
      //       )),
      // );
    }

    _dialogVertical() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              spreadRadius: 80,
              blurRadius: 25,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        // color: Colors.transparent,
        // height: 400,
        child: Padding(
            padding: EdgeInsets.all(1.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // DropDownWidget(),
                // DatePickerWidget(),

                Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.cancel_outlined,
                          color: Colors.white,
                          size: 26,
                        ),
                      )
                    ]),

                Column(
                  children: [
                    DropDownWidget(),
                    SizedBox(height: 20),
                    DatePickerWidget(),
                    SizedBox(height: 20),
                    Text("Enter Search Radius",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    SizedBox(height: 20),
                    OnlySlidePicker(),
                    // SizedBox(height: 20),
                  ],
                ),

                // SizedBox(),

                Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 48,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: 18,
                              backgroundColor: Colors.white,
                              color: Color(0xFF5F54ED),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                )
              ],
            )),
      );

      //------------------------------------ acima new

      // return Container(
      //   color: Colors.transparent,
      //   height: 400,
      //   child: Padding(
      //       padding: EdgeInsets.all(6.0),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           DropDownWidget(),
      //           SizedBox(height: 16),
      //           DatePickerWidget(),
      //           SizedBox(height: 20),
      //           Text("Enter Search Radius",
      //               style: TextStyle(color: Colors.white, fontSize: 18)),
      //           SizedBox(height: 20),
      //           OnlySlidePicker(),
      //           SizedBox(height: 20),
      //           Center(
      //             child: Container(
      //                 width: MediaQuery.of(context).size.width * 0.35,
      //                 height: 48,
      //                 decoration: BoxDecoration(
      //                     color: Colors.white,
      //                     borderRadius: BorderRadius.all(Radius.circular(8))),
      //           child: TextButton(
      //             onPressed: () {
      //               Navigator.pop(context);
      //             },
      //             child: Text(
      //               'Continue',
      //               style: TextStyle(
      //                 fontSize: 18,
      //                 backgroundColor: Colors.white,
      //                 color: Color(0xFF5F54ED),
      //               ),
      //             ),
      //           )),
      //     )
      //   ],
      // )),
      // );
    }

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    DateTime _dateTime;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.card_travel, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AltHome()));
          },
        ),
        title: Text(
          'Discover',
          style: GoogleFonts.sofia(
              fontWeight: FontWeight.normal,
              textStyle: TextStyle(color: Color(0xFF545D68), fontSize: 26.0)),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings_input_component_rounded,
                  color: Color(0xFF545D68)),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                // builder: (context) => LocationSettings()));

                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return Dialog(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: LayoutBuilder(builder: (context, constraints) {
                            if (constraints.maxWidth < 500) {
                              return _dialogVertical();
                            } else {
                              return _dialogHorizontal();
                            }
                          }));
                    });
              })
        ],
      ),
      body: Container(
        color: Colors.transparent,
        child: Container(
          child: Stack(
            // alignment: AlignmentDirectional.bottomCenter,

            children: <Widget>[
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.82,
                  width: MediaQuery.of(context).size.width,
                  child: MapWidget(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  color: Colors.transparent,
                  height: 80,
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Upcoming Parties',
                            style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Within Alberta',
                            style: GoogleFonts.sofia(
                                color: Color(0xFF5F54ED),
                                textStyle: TextStyle(
                                  fontSize: 16.0,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: LayoutBuilder(builder: (context, constraints) {
                    if (constraints.maxWidth < 500) {
                      return VerticalCard();
                    } else {
                      return HorizontalCard();
                    }
                  })),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: BottomBar(),
    );
  }
}

class MapWidget extends StatefulWidget {
  @override
  State<MapWidget> createState() => MapWidgetState();
}

class MapWidgetState extends State<MapWidget> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        // myLocationEnabled: false,
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}
