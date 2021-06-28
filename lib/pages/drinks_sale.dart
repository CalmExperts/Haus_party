import 'package:flutter/material.dart';

class DrinkSales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          }),
          title: Column(
            children: <Widget>[
              Text("Buy Drinks"),
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Colors.white),
              //     borderRadius: BorderRadius.all(Radius.circular(20))
              //   ),
              //   height: 10,
              //   width: 50,
              //   child: Text("\$500")
              // )
            ],
          ),
        ),
        backgroundColor: Color(0xFF5F54ED),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
                padding: EdgeInsets.all(20),
                sliver: SliverGrid.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height),
                    children: <Widget>[
                      Drink(
                        drinkImage: "assets/dom_perignon.png",
                        drinkPrice: 500,
                        drinkName: "Dom Perignon",
                      ),
                      Drink(
                        drinkImage: "assets/henessy.png",
                        drinkPrice: 500,
                        drinkName: "Henessy",
                      ),
                      Drink(
                        drinkImage: "assets/dirty_martini.png",
                        drinkPrice: 10,
                        drinkName: "Dirty Martini",
                      ),
                      Drink(
                        drinkImage: "assets/dusse.png",
                        drinkPrice: 450,
                        drinkName: "Dusse",
                      ),
                      Drink(
                        drinkImage: "assets/ciroc_peach.png",
                        drinkPrice: 500,
                        drinkName: "Ciroc Peach",
                      ),
                    ]))
          ],
        ));
  }
}

class Drink extends StatelessWidget {
  const Drink({this.drinkImage, this.drinkPrice, this.drinkName});

  final String? drinkImage;
  final double? drinkPrice;
  final String? drinkName;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "\$$drinkPrice",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Image(
              image: AssetImage(
                  drinkImage!.isEmpty ? "assets/drink_image.png" : drinkImage!),
              fit: BoxFit.fill,
              height: 80.0,
            ),
            Text(drinkName!,
                style: TextStyle(color: Colors.black, fontSize: 10.0)),
            SizedBox(
              height: 30,
            ),
            Container(
              // width: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 15,
                    child: RaisedButton(
                      color: Color(0xFF5F54ED),
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 10,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  // SizedBox(width: 2),
                  Text("1", style: TextStyle(color: Colors.black, fontSize: 13.0)),
                  Container(
                    height: 15,
                    child: RaisedButton(
                      color: Color(0xFF5F54ED),
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 10,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 30,
              width: 60,
              child: RaisedButton(
                  color: Color(0xFF5F54ED),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0))),
                  child: Text("Add",
                      style: TextStyle(color: Colors.white, fontSize: 10.0)),
                  onPressed: () {}),
            ),
          ],
        ));
  }
}
