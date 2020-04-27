import 'package:flutter/material.dart';

class LivingCost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            // margin: EdgeInsets.all(20),
            padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
            child: Text(
              'The cost of living for international students studying at UTM Johor Bahru is reasonably low  compared to international standards, and can vary from USD200–USD400 a month depending  on individual needs and lifestyle (assuming single, excluding accommodation and transport).  UTM provide bus services within the campus',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          Container(
            // margin: EdgeInsets.all(20),
            padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
            child: Text(
              'All the necessary facilities and amenities are readily available within the campus and its  vicinity for the convenience of the students. Your spending patterns may be different from  depending on your preferences and lifestyle. It can be difficult to estimate how much you are  likely to spend as a student until you have settled down for. As such, it is important to ensure  that you have sufficient finance to support both your living expenses and tuition fees  throughout the duration ofstudies.',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
            child: Text(
              'Here are some of the prices that you may refer to : ',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          listBuilder(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Container listBuilder() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
      child: Table(
        children: [
          TableRow(
            children: [header('Item'), header('Price')],
          ),
          TableRow(children: [
            buildRowForData('Street-Stall Food'),
            buildRowForData('RM 6 - 12')
          ]),
          TableRow(children: [
            buildRowForData('Fast Food'),
            buildRowForData('RM 6 - 25')
          ]),
          TableRow(children: [
            buildRowForData('Resturant'),
            buildRowForData('RM 15 - 50')
          ]),
          TableRow(children: [
            buildRowForData('Clothing'),
            buildRowForData('RM 30+')
          ]),
          TableRow(children: [
            buildRowForData('Groceries'),
            buildRowForData('RM 30 - 80')
          ]),
          TableRow(children: [
            buildRowForData('Air Ticket'),
            buildRowForData('visit Air Asia website')
          ]),
          TableRow(children: [
            buildRowForData('Taxi'),
            buildRowForData('download Grab')
          ]),
          TableRow(children: [
            buildRowForData('Other Monthly Cost'),
            buildRowForData('RM 400+')
          ]),
        ],
      ),
    );
  }

  Container buildRowForData(data) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.blue[50],
      child: Text(
        data,
        style: buildTextStyle(14.0, Colors.black, FontWeight.bold),
      ),
    );
  }

  Container header(name) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Color(0xff2d5da9),
      child: Text(
        name,
        style: buildTextStyle(14.0, Colors.white, FontWeight.bold),
      ),
    );
  }

  Container costPoint(item, price) {
    return Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
        child: Row(
          children: <Widget>[
            Icon(Icons.arrow_right, color: Color(0xff2d5da9)),
            Container(child: Text(item)),
            SizedBox(width: 25),
            Container(child: Text(price)),
          ],
        ));
  }

  Container imageBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      child: Image.asset(
        'assets/images/livingCost.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      // elevation: 0,
      backgroundColor: Color(0xff2d5da9),
      title: Text(
        'Living Cost',
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
