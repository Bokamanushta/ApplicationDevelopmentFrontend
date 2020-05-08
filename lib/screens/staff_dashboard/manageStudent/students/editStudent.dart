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
  final _age = TextEditingController();
  final _sex = TextEditingController();
  final _passport = TextEditingController();
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _email = TextEditingController();

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
        title: buildAppbarTitle('Edit Students Info'),
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
                    'Image:',
                    style: buildTextStyle(16.0, Color(0xff22223b)),
                  ),
                ),
                SizedBox(height: 10),
                buildTextFormField('image', 1, _image),
                SizedBox(height: 20),
                Container(
                  child: Text('Name:',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('name', 1, _name),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('University',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('university', 1, _university),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Country',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('country', 1, _country),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Description',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('description', 1, _description),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Semester',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('semester', 1, _semester),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Faculty',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('faculty', 1, _faculty),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Age',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('age', 1, _age),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Sex',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('sex', 1, _sex),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Passport',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('passport', 1, _passport),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Username',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('username', 1, _username),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Password',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('password', 1, _password),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Email',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('email', 1, _email),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    color: Color(0xff4a4e69),
                    textColor: Colors.white,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        //backend code to update
                        setState(() {
                          profiles[widget.data['index']].image = _image.text;
                          profiles[widget.data['index']].description =
                              _description.text;
                          profiles[widget.data['index']].name = _name.text;
                          profiles[widget.data['index']].semester =
                              _semester.text;
                          profiles[widget.data['index']].country =
                              _country.text;
                          profiles[widget.data['index']].faculty =
                              _faculty.text;
                          profiles[widget.data['index']].university =
                              _university.text;
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
