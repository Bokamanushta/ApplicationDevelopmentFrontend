import 'package:flutter/material.dart';

class ByCoach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3c3c3b),
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
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.27),
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
              'From KLIA or KLIA 2 to Johor Bahru, you can take YoYo Bus which will cost you around RM 60 – RM 70. Kindly inform the staff in charge at the service counter and bus driver to stop at Taman Tun Aminah Bus Station. Then, you can get a taxi / uber / grab service to UTM Johor Bahru Campus.',
              style: buildTextStyle(17.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height:15),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'Johor Bahru YoYo Express Bus Contactdetails:-',
              style: buildTextStyle(19.0, Colors.black, FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'Address: \nCounter 16, Terminal Bas & Teksi Taman Ungku Tun Aminah, Jalan Perwira 16, Taman Ungku Tun Aminah, 81300 Skudai, Johor. \nPhone: \n+607-5545723',
              style: buildTextStyle(17.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'Airport Taxi (Senai):-',
              style: buildTextStyle(19.0, Colors.black, FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'Tel: +6075991622\nFor further information please visit http://www.senaiairport.com/',
              style: buildTextStyle(17.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'Airport Taxi (KLIA):-',
              style: buildTextStyle(19.0, Colors.black, FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'Tel : 1300 888989\nFor further information please visit http://www.airportlimo.my/',
              style: buildTextStyle(17.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'It is recommended to download the Grab app from the playstore as the fare is cheaper is more cheaper more than the local taxi fares.',
              style: buildTextStyle(17.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height:10),
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
          color: Color(0xff609a92),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(text,
                  style: buildTextStyle(18.0, Colors.white, FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Color(0xff6ad7f6),
      title: Text(
        'By Coach',
        style: buildTextStyle(22.0, Colors.white, FontWeight.bold),
      ),
    );
  }

  Container imageBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/images/bus_mod.png',
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
