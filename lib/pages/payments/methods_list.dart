import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:haus_party/components/card_details.dart';
import 'package:haus_party/core/cloud.dart';
import 'package:haus_party/models/card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;


final cardsProvider = FutureProvider<List<CardModel>>((ref) async {
  final result = await http
      .get(Uri.parse(apilink + '/allcards?id=CGX1IfMDXyyVZNml4vSA'));
  final data = json.decode(result.body) as List;
  final list = data.map((value) => CardModel.fromJson(value)).toList();
  return list;
});

class PaymentMethods extends StatelessWidget {
  final bool? showAppBar;
  const PaymentMethods({Key? key, this.showAppBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String brandImage(String brand) {
      switch (brand.toLowerCase()) {
        case 'visa':
          return 'https://logosvector.net/wp-content/uploads/2013/06/visa-card-vector-logo.png';

        default:
          return 'https://logosvector.net/wp-content/uploads/2013/06/visa-card-vector-logo.png';
      }
    }

    return Consumer(builder: (context, watch, child) {
      final list = watch(cardsProvider);
      return Scaffold(
        appBar: showAppBar == true
            ? AppBar(
                title: Text("Payments Methods"),
                actions: [
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardDetails(),
                        ),
                      );
                    },
                  )
                ],
              )
            : null,
        body: FutureBuilder<http.Response>(
          initialData: null,
          future: http.get(
              Uri.parse(apilink + '/allcards?id=CGX1IfMDXyyVZNml4vSA')),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            final data = json.decode(snapshot.data!.body) as List;
            final value =
                data.map((value) => CardModel.fromJson(value)).toList();
            return ListView.builder(
              itemCount: value.length,
              padding: EdgeInsets.only(left: 10, right: 10, top: 30),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${value[index].brand}"),
                  subtitle: Text("**** ${value[index].last4}"),
                  leading: Container(
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(brandImage(value[index].brand!)),
                    )),
                  ),
                  trailing: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Icon(Icons.done, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                );
              },
            );
          },
        ),
      );
    });
  }
}
