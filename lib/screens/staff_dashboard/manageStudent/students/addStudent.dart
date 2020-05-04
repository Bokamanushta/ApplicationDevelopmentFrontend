import 'package:flutter/material.dart';
import 'package:utm_x_change/models/mockData.dart';
import 'package:utm_x_change/models/profileInfo/profileInfo.dart';

class StudentAdd extends StatefulWidget {
  final ProfileInfo data = ProfileInfo();

  @override
  _StudentAddState createState() => _StudentAddState();
}

class _StudentAddState extends State<StudentAdd> {
  final _formKey = GlobalKey<FormState>();
  final _image = TextEditingController();
  final _name = TextEditingController();
  final _university = TextEditingController();
  final _country = TextEditingController();
  final _description = TextEditingController();
  final _semester = TextEditingController();
  final _faculty = TextEditingController();

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
                buildTextFormField('image', 1, _image),
                SizedBox(height: 20),
                Container(
                  child: Text('Name:',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('name', 1, _name),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('University',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('university', 1, _university),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Country',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('country', 1, _country),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Description',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('description', 1, _description),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Semester',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('semester', 1, _semester),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Faculty',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('faculty', 1, _faculty),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        //backend code to update
                        setState(() {
                          widget.data.image = _image.text;
                          widget.data.description = _description.text;
                          widget.data.name = _name.text;
                          widget.data.semester = _semester.text;
                          widget.data.country = _country.text;
                          widget.data.faculty = _faculty.text;
                          widget.data.university = _university.text;
                          profiles.add(widget.data);
                        });
                        Navigator.pop(context);
                      }
                    },
                    child: Text('Add'),
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
