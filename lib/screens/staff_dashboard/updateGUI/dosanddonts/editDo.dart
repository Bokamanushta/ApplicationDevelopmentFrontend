import 'package:flutter/material.dart';
import 'package:utm_x_change/models/mockData.dart';

class DosDontUpdate extends StatefulWidget {
  final data;
  DosDontUpdate({this.data});

  @override
  _DosDontUpdateState createState() => _DosDontUpdateState();
}

class _DosDontUpdateState extends State<DosDontUpdate> {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _description = TextEditingController();
  final _type = TextEditingController();

  @override
  void initState() {
    super.initState();
    _title.text = widget.data['list'].title;
    _description.text = widget.data['list'].description;
    _type.text = widget.data['list'].type;
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
                    'title', widget.data['list'].title, 1, _title),
                SizedBox(height: 20),
                Container(
                  child: Text('Description:',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('description',
                      widget.data['list'].description, 7, _description),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Type',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField(
                      'type', widget.data['list'].type, 1, _type),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        //backend code to update
                        setState(() {
                        dodontList[widget.data['index']].title = _title.text ;
                        dodontList[widget.data['index']].description = _description.text ;
                        dodontList[widget.data['index']].type = _type.text ;
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
