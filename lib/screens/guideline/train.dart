import 'package:flutter/material.dart';

class ByTrain extends StatelessWidget {
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
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.28),
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
              'You make sure your KTM train tickets to Johor Bahru. From Johor Bahru Train Station, you can take a taxi or bus to Taman Universiti. From Taman Universiti, it will be 5 minutes’ drive from UTM. You can take a taxi in front of Jusco Taman Universiti to UTM.',
              style: buildTextStyle(14.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height:15),
          Container(
            height: MediaQuery.of(context).size.height*.8,
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'KTM Malaysia Booking & Schedule Online can be found at: \n\nhttp://www.ktmb.com.my/ktmb_ui',
              style: buildTextStyle(14.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
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
      backgroundColor: Color(0xff3c3c3b),
      title: Text(
        'By Train',
        style: buildTextStyle(22.0, Colors.white, FontWeight.bold),
      ),
    );
  }

  Container imageBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/images/train_mod.png',
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
