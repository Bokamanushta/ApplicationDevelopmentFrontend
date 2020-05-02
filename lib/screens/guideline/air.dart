import 'package:flutter/material.dart';

class ByAir extends StatelessWidget {
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
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.23),
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
              'The nearest airport to UTM is Sultan Ismail International Airport (also known as Senai Airport). You can take international flight to KualaLumpur International Airport (KLIA) and take a connecting flight to Sultan Ismail International Airport. Then please take a taxi from the airport taxi counter to UTM Johor Bahru, and the fare is approximately RM 30 to RM 40. You may also request for grab services to our campus and their charge is usually cheaper than taxi services.',
              style: buildTextStyle(14.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height:15),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'Here are the list of the Air companies that you may choose. All the companies have online booking system available, so you can buy the ticket from their official websites. Here is the number of the Senai Aorport Helpdesk :+607 5994500, incase of you need some help over there. ',
              style: buildTextStyle(14.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset('assets/images/air_asia.png',
              width: 80,
              height: 80,
              ),
              Image.asset('assets/images/firefly.png',
              width: 110,
              height: 110,),
          ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset('assets/images/malaysia_airlines.png',
              width: 110,
              height: 110,),
              Image.asset('assets/images/malindo_airlines.png',
              width: 110,
              height: 110,),
          ],
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'Another option is to take an international flight from your home country to Changi International Airport, Singapore and take an airport taxi to UTM Johor Bahru. However, you may need visa to enter Singapore.',
              style: buildTextStyle(14.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height:15),
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
      backgroundColor: Color(0xff5f87de),
      title: Text(
        'By Air',
        style: buildTextStyle(22.0, Colors.white, FontWeight.bold),
      ),
    );
  }

  Container imageBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/images/plane.png',
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
