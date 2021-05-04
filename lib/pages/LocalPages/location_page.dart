import 'dart:async';
// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:haus_party/bottom_bar.dart';
import 'package:haus_party/home_cards.dart';
import 'package:haus_party/home_page_alt.dart';
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

// import 'bottom_bar.dart';
// import 'location_settings.dart';

// void main() => runApp(MyApp());

// void main() {
//   runApp(DevicePreview(builder: (_) => MyApp(),
//   enabled: true,
//   ));
// }
//

class LocationPage extends StatefulWidget {
  LocationPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  // List listItem = ["Rio de Janeiro", "São Paulo", "Recife", "Florianópolis"];
  // String valueChoose;

  @override
  Widget build(BuildContext context) {
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
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF5F54ED),
            size: 26,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Location',
          style: GoogleFonts.sofia(
              fontWeight: FontWeight.normal,
              textStyle: TextStyle(color: Color(0xFF5F54ED), fontSize: 26.0)),
        ),
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
              // Padding(
              //   padding: const EdgeInsets.only(left: 16.0),
              //   child: Container(
              //     color: Colors.transparent,
              //     height: 80,
              //     alignment: Alignment.topLeft,
              //     child: Column(
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             Text(
              //               'Upcoming Parties',
              //               style: GoogleFonts.rubik(
              //                   textStyle: TextStyle(
              //                       fontSize: 28.0,
              //                       fontWeight: FontWeight.w600)),
              //             ),
              //           ],
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             Text(
              //               'Within Alberta',
              //               style: GoogleFonts.sofia(
              //                   color: Color(0xFF5F54ED),
              //                   textStyle: TextStyle(
              //                     fontSize: 16.0,
              //                   )),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Align(alignment: Alignment.bottomCenter, child: PartyCard()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
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
