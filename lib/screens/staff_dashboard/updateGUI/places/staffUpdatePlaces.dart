import 'package:flutter/material.dart';
import 'package:utm_x_change/models/place.dart';
import 'package:utm_x_change/services/places_data_service.dart';

class StaffUpdatePlace extends StatefulWidget {
  final Place data;
  final dataService = PlaceDataService();
  StaffUpdatePlace({this.data});

  @override
  _StaffUpdatePlaceState createState() => _StaffUpdatePlaceState();
}

class _StaffUpdatePlaceState extends State<StaffUpdatePlace> {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _decsription = TextEditingController();
  final _imageLocation = TextEditingController();
  final _distance = TextEditingController();
  final _rating = TextEditingController();

  @override
  void initState() {
    super.initState();
    _title.text = widget.data.title;
    _decsription.text = widget.data.description;
    _imageLocation.text = widget.data.imageLocation;
    _distance.text = widget.data.distance;
    _rating.text = widget.data.review;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: buildAppbarTitle('Edit Places'),
        backgroundColor: Color(0xff4a4e69),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Title:',
                    style: buildTextStyle(16.0, Color(0xff22223b)),
                  ),
                ),
                SizedBox(height: 10),
                buildTextFormField('title', 1, _title),
                SizedBox(height: 20),
                Container(
                  child: Text('Description:',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('descrption', 10, _decsription),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Image Location:',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child:
                      buildTextFormField('image location', 1, _imageLocation),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Distance:',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('distance', 1, _distance),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Ratings:',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('ratings', 1, _rating),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    color: Color(0xff4a4e69),
                    textColor: Colors.white,
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        //backend code to update
                        widget.data.title = _title.text;
                        widget.data.description = _decsription.text;
                        widget.data.imageLocation = _imageLocation.text;
                        widget.data.distance = _distance.text;
                        widget.data.review = _rating.text;

                        await widget.dataService.updateNotice(
                            id: widget.data.id, place: widget.data);
                        Navigator.pop(context);
                      }
                    },
                    child: Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildTextFormField(titleText, line, controller) {
    return TextFormField(
      style: buildTextStyle(14.0, Color(0xff22223b)),
      maxLines: line,
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Enter $titleText here',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffc9ada7), width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff4a4e69), width: 1.0),
        ),
      ),
      validator: (value) {
        if (value.isEmpty) return 'Please enter some text';
        return null;
      },
    );
  }

  Image buildImage(asset) {
    return Image.asset(asset,
        color: Color.fromRGBO(255, 255, 255, .25),
        colorBlendMode: BlendMode.modulate);
  }

  Text buildAppbarTitle(title) {
    return Text(
      title,
      style: buildTextStyle(22.0, Colors.white),
    );
  }

  TextStyle buildTextStyle(size, color) {
    return TextStyle(
      color: color,
      fontFamily: 'Overlock',
      fontWeight: FontWeight.bold,
      fontSize: size,
    );
  }
}
