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
          style: TextStyle(
              fontFamily: 'Overlock',
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
              color: Colors.white),
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
                  Container(
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
                            ),
                            items: imageSliders),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: Colors.black,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: Colors.grey,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: Colors.green,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: Colors.orangeAccent,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: Colors.red,
                  ),
            ],
          ),
        ),
      ),
    );
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
