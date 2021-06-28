import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:haus_party/login_page/widgets/responsives/horizontal_card.dart';
import 'package:haus_party/login_page/widgets/responsives/vertical_card.dart';
import 'package:haus_party/pages/home_page_alt.dart';
import 'package:haus_party/service/authProvider.dart';
import 'package:haus_party/util/userProvider.dart';
import 'package:provider/provider.dart';

import 'routing.dart';

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
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  // List listItem = ["Rio de Janeiro", "São Paulo", "Recife", "Florianópolis"];
  // String valueChoose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.card_travel, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AltHome()));
          },
        ),
        title: Text(
          'Discover',
          style: GoogleFonts.sofia(
              fontWeight: FontWeight.normal,
              textStyle:
                  TextStyle(color: Color(0xFF545D68), fontSize: 26.0)),
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

                /* showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return Dialog(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: LayoutBuilder(
                              builder: (context, constraints) {
                            if (constraints.maxWidth < 500) {
                              return _dialogVertical();
                            } else {
                              return _dialogHorizontal();
                            }
                          }));
                    });*/
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
}
