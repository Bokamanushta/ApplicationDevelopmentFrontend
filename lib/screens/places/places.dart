import 'package:flutter/material.dart';
import 'package:utm_x_change/models/mockData.dart';
import 'package:utm_x_change/screens/places/placeHelper.dart';

class Places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarForPlaces(),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Image.asset(
              'assets/images/places.png',
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
              itemCount: placeList.length,
            ),
          );
        });
  }

  Widget buildCard(index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  placeList[index].imageLocation,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  placeList[index].title,
                  style: buildTextStyle(16.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: DescriptionTextWidget(text: placeList[index].description),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Distance: ${placeList[index].distance}',
                      style: buildTextStyle(14.0),
                    ),
                    Text(
                      'Review: ${placeList[index].review} out of 5',
                      style: buildTextStyle(14.0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextStyle buildTextStyle(size) {
    return TextStyle(
        fontFamily: 'Overlock',
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: Colors.black);
  }

  AppBar buildAppBarForPlaces() {
    return AppBar(
      backgroundColor: Color(0xff3ababb),
      centerTitle: true,
      title: Text('List of Famous Places',
          style: TextStyle(
            fontFamily: 'Overlock',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          )),
    );
  }
}
