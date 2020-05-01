import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Tour extends StatelessWidget {
  static List imgList = [
    'assets/images/step1.png',
    'assets/images/step2.png',
    'assets/images/step3.png',
    'assets/images/step4.png',
    'assets/images/step5.png',
    'assets/images/done.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Builder(
            builder: (context) {
              final double height = MediaQuery.of(context).size.height;
              return CarouselSlider(
                options: CarouselOptions(
                  height: height,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  autoPlayInterval: Duration(seconds:3)
                ),
                items: imgList
                    .map((item) => Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Center(
                                child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              // height: height,
                            ),
                            ),
                          ),
                        ),
                        )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
