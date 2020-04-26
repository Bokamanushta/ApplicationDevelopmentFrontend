import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Accomodation extends StatelessWidget {
  static List imgList = [
    'assets/images/shopping_home.png',
    'assets/images/shopping_home.png',
    'assets/images/shopping_home.png',
    'assets/images/shopping_home.png',
    'assets/images/shopping_home.png',
    'assets/images/shopping_home.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff41406a),
        title: Text(
          'Accomodation',
          style: buildTextStyle(Colors.white, 22.0),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: Color(0xff41406a),
                  ),
                  buildImageSLider(),
                ],
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                    'All UTM Inbound Mobility Students will be guarantee an on-campus accommodation. Please made a bookingat least 1 month prior to your arrival date.',
                    style: buildTextStyle(Colors.black, 16.0)),
              ),
              buildService(),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                    'Students will be allocated at the Campus Residence as follow :',
                    style: buildTextStyle(Colors.black, 16.0)),
              ),
              buildTable(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildTable() {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
      child: Table(
        border: TableBorder.all(),
        children: [
          TableRow(
            decoration: BoxDecoration(),
            children: [
              buildContainerForRowHeader('ROOM TYPE'),
              buildContainerForRowHeader('BEDDING'),
              buildContainerForRowHeader('MONTHLY RATE'),
            ],
          ),
          buildTableRow('Single', '1', 'RM 730'),
          buildTableRow('Twin Sharing', '2', 'RM 630'),
          buildTableRow('Tripplie Sharing', '3', 'RM 520'),
        ],
      ),
    );
  }

  Container buildService() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text('Services:', style: buildTextStyle(Colors.black, 16.0)),
          ),
          buildRowhelper(Icons.arrow_right, 'Single Bed'),
          buildRowhelper(Icons.arrow_right, 'Pillow'),
          buildRowhelper(Icons.arrow_right, 'Mattress'),
          buildRowhelper(Icons.arrow_right, 'Mirror'),
          buildRowhelper(Icons.arrow_right, 'Wardrobe'),
          buildRowhelper(Icons.arrow_right, 'Bookshelf'),
          buildRowhelper(Icons.arrow_right, 'Study Table and Chair'),
          buildRowhelper(Icons.arrow_right, 'Curtains'),
          buildRowhelper(Icons.arrow_right, 'Wi-Fi Access'),
          buildRowhelper(Icons.arrow_right, 'Fan'),
          buildRowhelper(Icons.arrow_right, 'Utility Table'),
          buildRowhelper(Icons.arrow_right, 'Air-Conditioned (Prepaid)'),
        ],
      ),
    );
  }

  Container buildImageSLider() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
              options: CarouselOptions(
                  initialPage: 0,
                  height: 200,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  autoPlayInterval: Duration(milliseconds: 2000)),
              items: imageSliders),
        ],
      ),
    );
  }

  TableRow buildTableRow(type, bed, rate) {
    return TableRow(
      children: [
        buildRowForData(type),
        buildRowForData(bed),
        buildRowForData(rate),
      ],
    );
  }

  Container buildRowForData(data) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Color(0xffFCF5C7),
      child: Text(
        data,
        style: buildTextStyle(Colors.black, 14.0),
      ),
    );
  }

  Container buildContainerForRowHeader(data) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Color(0xff41406a),
      child: Text(
        data,
        style: buildTextStyle(Colors.white, 14.0),
      ),
    );
  }

  Column buildRow(icona, lebela, iconb, lebelb) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        buildRowhelper(icona, lebela),
        SizedBox(height: 10),
        buildRowhelper(iconb, lebelb),
        // SizedBox(width: 40),
      ],
    );
  }

  Row buildRowhelper(icona, lebela) {
    return Row(
      children: <Widget>[
        Icon(icona, color: Color(0xff41406a)),
        SizedBox(width: 5),
        Container(
            child: Text(
          lebela,
          style: buildTextStyle(Color(0xff41406a), 16.0),
        )),
      ],
    );
  }

  TextStyle buildTextStyle(color, size) {
    return TextStyle(
        fontFamily: 'Overlock',
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: color);
  }

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Image.asset(item, fit: BoxFit.cover, width: 1000.0)),
            ),
          ))
      .toList();
}
