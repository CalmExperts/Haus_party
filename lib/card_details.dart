// import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';
// import 'package:flutter_credit_card/credit_card_form.dart';
// import 'package:flutter_credit_card/credit_card_model.dart';

// class CardDetails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.grey[200],
//           leading: IconButton(
//               icon: Icon(Icons.arrow_back),
//               color: Colors.blue,
//               iconSize: 15.0,
//               onPressed: () {
//                 Navigator.pop(context);
//               }),
//           title: Text("Payment",
//               style: TextStyle(color: Colors.black, fontSize: 20)),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
//           child: ListView(children: <Widget>[
//             CardDetailState(),
//             SizedBox(height: size.height * 0.05),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                   width: size.width * 0.3,
//                   height: size.height * 0.07,
//                   child: RaisedButton(
//                     elevation: 30,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     color: Color(0xFF5F54ED),
//                     onPressed: () {},
//                     child: Text("Add Card",
//                         style: TextStyle(color: Colors.white, fontSize: 15)),
//                   ),
//                 )
//               ],
//             )
//           ]),
//         ));
//   }
// }

// class CardDetailState extends StatefulWidget {
//   CardDetailState({Key key}) : super(key: key);

//   @override
//   _CardDetailStateful createState() => _CardDetailStateful();
// }

// // void onCreditCardModelChange(CreditCardModel creditCardModel) {
// //     setState(() {
// //       cardNumber = creditCardModel.cardNumber;
// //       expiryDate = creditCardModel.expiryDate;
// //       cardHolderName = creditCardModel.cardHolderName;
// //       cvvCode = creditCardModel.cvvCode;
// //       isCvvFocused = creditCardModel.isCvvFocused;
// //     });
// //   }

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:haus_party/bottom_bar.dart';
import 'package:haus_party/pages/congrats_card_page.dart';

class CardDetails extends StatefulWidget {
  @override
  _CardDetailsState createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF5F54ED),
                size: 26,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: CreditCardWidget(
                    expiryDate: expiryDate,
                    cardNumber: cardNumber,
                    cardHolderName: cardHolderName,

                    cvvCode: cvvCode,
                    showBackView: isCvvFocused,
                    cardBgColor: Color(0xFFa19bf4),
                    height: 170,

                    obscureCardCvv: true,
                    textStyle: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                    width: MediaQuery.of(context).size.width,
                    animationDuration: Duration(milliseconds: 1000),
                    // height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: CreditCardForm(
                    formKey: formKey,
                    obscureCvv: true,
                    obscureNumber: true,
                    cvvCode: cvvCode,
                    cardNumber: cardNumber,
                    cardHolderName: cardHolderName,
                    expiryDate: expiryDate,
                    themeColor: Color(0xFF5F54ED),
                    cardHolderDecoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Card Holder',
                    ),
                    cardNumberDecoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Number',
                      hintText: 'XXXX XXXX XXXX XXXX',
                    ),
                    expiryDateDecoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Expired Date',
                      hintText: 'XX/XX',
                    ),
                    cvvCodeDecoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'CVV',
                      hintText: 'XXX',
                    ),
                    onCreditCardModelChange: onModalChange,
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 108),
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      primary: const Color(0xFF5F54ED),
                    ),
                    child: Container(
                      child: const Text(
                        'Add Card',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'halter',
                          fontSize: 16,
                          package: 'flutter_credit_card',
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        print('valid!');

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CongratsCardPage(
                                      name: cardHolderName,
                                    )));
                      } else {
                        print('invalid!');
                      }
                    },
                  ),
                ),
                SizedBox(height: 32),
              ],
            )
          ]),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  void onModalChange(CreditCardModel model) {
    setState(() {
      cardNumber = model.cardNumber;
      expiryDate = model.expiryDate;
      cardHolderName = model.cardHolderName;
      cvvCode = model.cvvCode;
      isCvvFocused = model.isCvvFocused;
    });
  }
}
