import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haus_party/core/providers.dart';
import 'package:haus_party/models/event.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haus_party/pages/payments/methods_list.dart';

class ModalReserve extends StatefulWidget {
  final EventModel? event;

  const ModalReserve({Key? key, required this.event}) : super(key: key);
  @override
  _ModalReserveState createState() => _ModalReserveState();
}

class _ModalReserveState extends State<ModalReserve> {
  Map<String, dynamic> defaultCard = {"type": "visa", "last4": 4242};
  @override
  Widget build(BuildContext context) {
    //
    final cards = context.read(cardsProvider);
    final user = context.read(userProvider);
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
          // shrinkWrap: true,
          children: <Widget>[
            SizedBox(
              height: 32,
            ),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140,
                      margin: EdgeInsets.fromLTRB(32, 16, 32, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        child: Image.asset(
                          // "assets/backgroundNewLogisn.png",
                          'assets/asset-1.png',

                          fit: BoxFit.fill,
                          // height: 1000.0,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                      ),
                      margin: EdgeInsets.fromLTRB(32, 0, 32, 64),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 22),
                      // height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            2, 2, 2, 2),
                                        height: 59.0,
                                        width: 59.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset:
                                                  Offset(0.0, 1.0), //(x,y)
                                              blurRadius: 6.0,
                                            ),
                                          ],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                        ),
                                        child: Column(children: <Widget>[
                                          Text('Jan',
                                              style: TextStyle(
                                                  color: Color(0xFF5F54ED),
                                                  fontSize: 18.0,
                                                  fontWeight:
                                                      FontWeight.w300)),
                                          Text('22',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 26.0,
                                                  fontWeight:
                                                      FontWeight.w600)),
                                        ]))
                                  ],
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    //title
                                    Text('${widget.event!.title}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700)),
                                    //host
                                    Text('Host - Dj Clinton',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                        )),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                        '${widget.event!.address!.address}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text('People Attending',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                        )),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text('129',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Time',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                        )),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text('5-7PM',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 16.0, bottom: 16),
                              child: SizedBox(
                                width: 165,
                                height: 3,
                                child: Container(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Text(
                              '\$${widget.event!.price}',
                              style: TextStyle(
                                  color: Color(0xFF5F54ED),
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            if (user.data!.value?.defaultCard != null)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16.0),
                                child: InkWell(
                                  child: Text(
                                    'Your ${defaultCard['type']} Card **** ${defaultCard['last4']} will be charged',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  onTap: () {
                                    showCupertinoModalPopup(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          height: 300,
                                          child: PaymentMethods(),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            Container(
                              width: 100,
                              height: 38,
                              decoration: BoxDecoration(
                                color: Color(0xFF5F54ED),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[800]!,
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0,
                                    offset: Offset(2.0,
                                        2.0), // shadow direction: bottom right
                                  )
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  if (user.data!.value?.defaultCard !=
                                          null &&
                                      cards.data!.value.length == 0) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PaymentMethods(),
                                      ),
                                    );
                                  } else {}
                                },
                                child: Text(
                                  'Pay',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  width: 45,
                  height: 45,
                  left: 16,
                  top: 0,
                  child: FloatingActionButton(
                      backgroundColor: Color(0xFF5F54ED),
                      shape: CircleBorder(),
                      elevation: 6,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Icon(
                          Icons.cancel_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),

            // ),
          ],
        ));
  }
}
