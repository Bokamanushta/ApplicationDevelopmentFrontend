import 'package:flutter/material.dart';
import 'package:utm_x_change/models/mockData.dart';

class Hotel extends StatefulWidget {
  @override
  _HotelState createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
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
              'assets/images/hotels.png',
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
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(23.0),
                  topLeft: Radius.circular(23.0)),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return buildCard(index);
              },
              controller: scrollController,
              itemCount: hotels.length,
            ),
          );
        });
  }

  Widget buildCard(index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: Card(
        color: Colors.white,
        elevation: 5.0,
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
                  hotels[index].name,
                  style: TextStyle(
                      fontFamily: 'Overlock',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1c6a9b)),
                ),
              ),
              SizedBox(height: 5),
              cardInfoHelper(Icons.location_on, hotels[index].address),
              SizedBox(height: 3),
              cardInfoHelper(Icons.phone, hotels[index].telephone),
              SizedBox(height: 3),
              cardInfoHelper(Icons.contacts, hotels[index].personCharge),
              SizedBox(height: 3),
            ],
          ),
        ),
      ),
    );
  }

  Padding cardInfoHelper(icon, name) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(icon, color: Color(0xff1c6a9b)),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              name,
              style: TextStyle(
                fontFamily: 'Overlock',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff1c6a9b),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBarForShopping() {
    return AppBar(
      backgroundColor: Color(0xff1c6a9b),
      elevation: 0,
      centerTitle: true,
      title: Text('Hotels Around UTM',
          style: TextStyle(
            fontFamily: 'Overlock',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          )),
    );
  }
}
