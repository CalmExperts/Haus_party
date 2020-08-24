import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.blue,
                iconSize: 15.0,
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: Text("Payment",
                style: TextStyle(color: Colors.black, fontSize: 20)),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: ListView(
              children: <Widget>[
                CardDetailState(),
                SizedBox(height: size.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: size.width * 0.3,
                      height: size.height * 0.07,
                      child: RaisedButton(
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        color: Color(0xFF5F54ED),
                        onPressed: () {},
                        child: Text("Add Card", style: TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                    )
                  ],
                  )
                ]
              ),
          )
    );
  }
}

class CardDetailState extends StatefulWidget {
  CardDetailState({Key key}) : super(key: key);

  @override
  _CardDetailStateful createState() => _CardDetailStateful();
}

class _CardDetailStateful extends State<CardDetailState> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      CreditCardWidget(
        cardNumber: cardNumber,
        expiryDate: expiryDate,
        cardHolderName: cardHolderName,
        cvvCode: cvvCode,
        showBackView: isCvvFocused,
        cardBgColor: Color(0xFF5F54ED),
        height: 170,
        textStyle: TextStyle(color: Colors.yellowAccent),
        width: MediaQuery.of(context).size.width,
        animationDuration: Duration(milliseconds: 1000),
        // height: MediaQuery.of(context).size.height * 0.1,
      ),
      CreditCardForm(
        themeColor: Colors.black,
        onCreditCardModelChange: (CreditCardModel data) {},
      ),
    ]);
  }
}

// void onCreditCardModelChange(CreditCardModel creditCardModel) {
//     setState(() {
//       cardNumber = creditCardModel.cardNumber;
//       expiryDate = creditCardModel.expiryDate;
//       cardHolderName = creditCardModel.cardHolderName;
//       cvvCode = creditCardModel.cvvCode;
//       isCvvFocused = creditCardModel.isCvvFocused;
//     });
//   }
