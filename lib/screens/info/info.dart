import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';

class Info extends StatelessWidget {
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
          aboutMalaysia(context),
          aboutUTM(context),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Container aboutUTM(context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, utm),
        child: Card(
          elevation: 5.0,
          color: Color(0xff7eb9f5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'About UTM',
                style: buildTextStyle(20.0, Colors.white, FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container aboutMalaysia(context) {
    return Container(
      // margin: EdgeInsets.all(20),
      padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, malaysia),
        child: Card(
          elevation: 5.0,
          color: Color(0xff7eb9f5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text('About Malaysia',
                  style: buildTextStyle(20.0, Colors.white, FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }

  Container imageBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      child: Image.asset(
        'assets/images/askQuestion.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      // elevation: 0,
      backgroundColor: Color(0xff7eb9f5),
      title: Text(
        'Info',
        style: buildTextStyle(22.0, Colors.white, FontWeight.bold),
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
