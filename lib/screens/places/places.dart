import 'package:flutter/material.dart';
import 'package:utm_x_change/models/place.dart';
import 'package:utm_x_change/screens/places/placeHelper.dart';
import 'package:utm_x_change/services/places_data_service.dart';

class Places extends StatefulWidget {
  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  final dataService = PlaceDataService();
  List<Place> places;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Place>>(
        future: dataService.getAllPlaces(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            places = snapshot.data;
            return buildMainScreen(context);
          }
          return _buildFetchingDataScreen();
        });
  }

  Scaffold buildMainScreen(BuildContext context) {
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
              itemCount: places.length,
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
                  places[index].imageLocation,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  places[index].title,
                  style: buildTextStyle(16.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: DescriptionTextWidget(text: places[index].description),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Distance: ${places[index].distance}',
                      style: buildTextStyle(14.0),
                    ),
                    Text(
                      'Review: ${places[index].review} out of 5',
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

  Scaffold _buildFetchingDataScreen() {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 50),
            Text('Fetching Places... Please wait'),
          ],
        ),
      ),
    );
  }
}
