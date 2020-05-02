import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';

class Arrive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              imageBuilder(context),
              bodyBuilder(context),
            ],
          ),
        ),
      ),
    );
  }

  Container bodyBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0), topLeft: Radius.circular(25.0)),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'If you come between Sunday –Wednesday: 8.00 am –5.00pm to Thursday : 8.00 am – 3.00pm, then please go to the security post at UTM main entrance and ask for direction to UTM International office. Alternatively, you can google map our location.\n\nBut if you come Friday / Saturday / Public Holiday / After Office Hour, then You may contact International Student Society members and get more information about accommodation or you can find accommodation nearby UTM Campus. here are the list of hotels that are near by UTM',
              style: buildTextStyle(14.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          travelOptions(context, 'Hotels Around UTM', hotels),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Now after you arrive UTM, you have to follow some simple steps to reister yourself.',
              style: buildTextStyle(14.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          travelOptions(context, 'Take a Tour', tour),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'Important Notes :- All payments for your tuition fees should be made prior to your registration date.',
              style: buildTextStyle(14.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }

  Container travelOptions(context, text, router) {
    return Container(
      // margin: EdgeInsets.all(20),
      padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, router),
        child: Card(
          elevation: 5.0,
          color: Color(0xff4f7f4b),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(text,
                  style: buildTextStyle(16.0, Colors.white, FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xff4f7f4b),
      title: Text(
        'Arriving at Campus',
        style: buildTextStyle(22.0, Colors.white, FontWeight.bold),
      ),
    );
  }

  Container imageBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/images/arrive.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }

  TextStyle buildTextStyle(size, color, weight) {
    return TextStyle(
      fontFamily: 'Overlock',
      fontWeight: weight,
      fontSize: size,
      color: color,
    );
  }
}
