import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:haus_party/core/cloud.dart';
import 'package:haus_party/core/providers.dart';
import 'package:haus_party/pages/congrats_card_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    final user = context.read(userProvider).data!.value;
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
                    onPressed: () async {
                      print(expiryDate);
                      if (formKey.currentState!.validate()) {
                        print('valid!');
                        var reuslt = await CloudFuncs().addCard(
                            cardNumber: cardNumber,
                            cvc: cvvCode,
                            email: user.email,
                            userId: user.id,
                            expMonth: '9',
                            expYear: '23');
                        print(reuslt);
                        if (reuslt != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CongratsCardPage(
                                name: cardHolderName,
                              ),
                            ),
                          );
                        }
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
