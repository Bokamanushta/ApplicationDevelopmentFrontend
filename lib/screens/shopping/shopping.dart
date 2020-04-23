import 'package:flutter/material.dart';
import 'package:utm_x_change/models/mockData.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5A3667),
      appBar: buildAppBarForShopping(),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Image.asset(
              'assets/images/shopping_home.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          bodyBuilder(),
        ],
      ),
    );
  }

  DraggableScrollableSheet bodyBuilder() {
    return DraggableScrollableSheet(
        initialChildSize: 0.65,
        minChildSize: 0.65,
        // maxChildSize: 0.8,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(23.0),
                  topLeft: Radius.circular(23.0)),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return buildCard(index);
              },
              controller: scrollController,
              itemCount: 6,
            ),
          );
        });
  }

  Widget buildCard(index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  shopCards[index].title,
                  style: TextStyle(
                      fontFamily: 'Overlock',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5A3667)),
                ),
              ),
              SizedBox(height: 5),
              cardInfoHelper(Icons.location_on, shopCards[index].address),
              SizedBox(height: 3),
              cardInfoHelper(Icons.info, shopCards[index].type),
              SizedBox(height: 3),
              cardInfoHelper(
                  Icons.monetization_on, shopCards[index].priceRannge),
              SizedBox(height: 3),
              cardInfoHelper(Icons.directions_car, shopCards[index].distnace),
              SizedBox(height: 3),
            ],
          ),
        ),
      ),
    );
  }

  Padding cardInfoHelper(icon, name) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(icon, color: Color(0xff5A3667)),
          SizedBox(width: 10),
          Text(
            name,
            style: TextStyle(
              fontFamily: 'Overlock',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff5A3667),
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBarForShopping() {
    return AppBar(
      backgroundColor: Color(0xff5A3667),
      elevation: 0,
      centerTitle: true,
      title: Text('List of Shopping Places',
          style: TextStyle(
            fontFamily: 'Overlock',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          )),
    );
  }
}