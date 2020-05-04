import 'package:flutter/material.dart';
import 'package:utm_x_change/models/mockData.dart';

class StaffUpdatePlace extends StatefulWidget {
  final data;
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
    _title.text = widget.data['place'].title;
    _decsription.text = widget.data['place'].description;
    _imageLocation.text = widget.data['place'].imageLocation;
    _distance.text = widget.data['place'].distance;
    _rating.text = widget.data['place'].review;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
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
                    style: buildTextStyle(16.0, Color(0xfff35963)),
                  ),
                ),
                SizedBox(height: 10),
                buildTextFormField(
                    'title', widget.data['place'].title, 1, _title),
                SizedBox(height: 20),
                Container(
                  child: Text('Description:',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('descrption',
                      widget.data['place'].description, 10, _decsription),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Image Location:',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('image location',
                      widget.data['place'].imageLocation, 1, _imageLocation),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Distance:',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField(
                      'distance', widget.data['place'].distance, 1, _distance),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Ratings:${widget.data['index']}',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField(
                      'ratings', widget.data['place'].review, 1, _rating),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        //backend code to update
                        placeList[widget.data['index']].title = _title.text;
                        placeList[widget.data['index']].description =
                            _decsription.text;
                        placeList[widget.data['index']].imageLocation =
                            _imageLocation.text;
                        placeList[widget.data['index']].distance =
                            _distance.text;
                        placeList[widget.data['index']].review = _rating.text;
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

  TextFormField buildTextFormField(titleText, data, line, controller) {
    return TextFormField(
      style: buildTextStyle(14.0, Colors.black),
      maxLines: line,
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Enter $titleText here',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
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
