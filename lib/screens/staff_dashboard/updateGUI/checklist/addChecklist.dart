import 'package:flutter/material.dart';
import 'package:utm_x_change/models/checkListData.dart';
import 'package:utm_x_change/models/mockData.dart';

class CheckListNew extends StatefulWidget {
  final CheckListData data = CheckListData();
  final String value;

  CheckListNew({this.value});

  @override
  _CheckListNewState createState() => _CheckListNewState();
}

class _CheckListNewState extends State<CheckListNew> {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();

  int returnIndex(){
    switch(widget.value){
      case 'Documents' : return 0;
      case 'Personal Things' : return 1;
      case 'Tips' : return 2;
      default: return null;
    }
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
                    'title', widget.data.title, 1, _title),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        //backend code to update
                        setState(() {
                        widget.data.title = _title.text ;
                        widget.data.value = false;
                        myList[returnIndex()].documentList.add(widget.data);
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
