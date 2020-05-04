import 'package:flutter/material.dart';
import 'package:utm_x_change/models/mockData.dart';

class StudentUpdate extends StatefulWidget {
  final data;
  StudentUpdate({this.data});

  @override
  _StudentUpdateState createState() => _StudentUpdateState();
}

class _StudentUpdateState extends State<StudentUpdate> {
  final _formKey = GlobalKey<FormState>();
  final _image = TextEditingController();
  final _name = TextEditingController();
  final _university = TextEditingController();
  final _country = TextEditingController();
  final _description = TextEditingController();
  final _semester = TextEditingController();
  final _faculty = TextEditingController();

  @override
  void initState() {
    super.initState();
    _image.text = widget.data['student'].image;
    _name.text = widget.data['student'].name;
    _university.text = widget.data['student'].university;
    _country.text = widget.data['student'].country;
    _description.text = widget.data['student'].description;
    _semester.text = widget.data['student'].semester;
    _faculty.text = widget.data['student'].faculty;
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
                    'Image:',
                    style: buildTextStyle(16.0, Color(0xfff35963)),
                  ),
                ),
                SizedBox(height: 10),
                buildTextFormField(
                    'image', widget.data['student'].image, 1, _image),
                SizedBox(height: 20),
                Container(
                  child: Text('Name:',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('name',
                      widget.data['student'].name, 1, _name),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('University',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField(
                      'university', widget.data['student'].university, 1, _university),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Country',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField(
                      'country', widget.data['student'].country, 1, _country),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Description',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField(
                      'description', widget.data['student'].description, 1, _description),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Semester',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField(
                      'semester', widget.data['student'].semester, 1, _semester),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Faculty',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField(
                      'faculty', widget.data['student'].faculty, 1, _faculty),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        //backend code to update
                        setState(() {
                        profiles[widget.data['index']].image = _image.text ;
                        profiles[widget.data['index']].description = _description.text ;
                        profiles[widget.data['index']].name = _name.text ;
                        profiles[widget.data['index']].semester = _semester.text ;
                        profiles[widget.data['index']].country = _country.text ;
                        profiles[widget.data['index']].faculty = _faculty.text ;
                        profiles[widget.data['index']].university = _university.text ;
                        });
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
