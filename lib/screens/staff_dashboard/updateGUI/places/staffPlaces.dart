import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';
import 'package:utm_x_change/models/place.dart';
import 'package:utm_x_change/screens/places/placeHelper.dart';
import 'package:utm_x_change/services/places_data_service.dart';

class StaffPlaces extends StatefulWidget {
  @override
  _StaffPlacesState createState() => _StaffPlacesState();
}

class _StaffPlacesState extends State<StaffPlaces> {
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
      floatingActionButton: FloatingActionButton(
        elevation: 3.0,
        onPressed: () => navigateAdd(context),
        child: Icon(Icons.add),
        backgroundColor: Color(0xff3ababb),
      ),
    );
  }

  void navigateEdit(context, index) async {
    await Navigator.pushNamed(
      context,
      staff_updatePlaces,
      arguments: places[index],
    );
    setState(() {});
  }

  void navigateAdd(context) async {
    await Navigator.pushNamed(
      context,
      staff_newPlaces,
    );
    setState(() {});
  }

  void navigateDelete(id, index) async {
    await dataService.deletePlace(id: id);
    setState(() {
      places.removeAt(index);
    });
  }

  DraggableScrollableSheet bodyBuilder() {
    return DraggableScrollableSheet(
        initialChildSize: 0.65,
        minChildSize: 0.65,
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
                return buildCard(index, context);
              },
              controller: scrollController,
              itemCount: places.length,
            ),
          );
        });
  }

  Widget buildCard(index, context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: Card(
        elevation: 5,
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
                      'Ratings: ${places[index].review}',
                      style: buildTextStyle(14.0),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                        onPressed: () => navigateEdit(context, index)),
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.black,
                      ),
                      onPressed: () => navigateDelete(places[index].id, index),
                    )
                  ],
                ),
              ),
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
