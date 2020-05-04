import 'package:flutter/material.dart';
import 'package:utm_x_change/models/ShoppingCard.dart';
import 'package:utm_x_change/models/mockData.dart';

class StaffNewShop extends StatefulWidget {
  final ShoppingCard data = ShoppingCard();

  @override
  _StaffNewShopState createState() => _StaffNewShopState();
}

class _StaffNewShopState extends State<StaffNewShop> {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _address = TextEditingController();
  final _pricerange = TextEditingController();
  final _distance = TextEditingController();
  final _type = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: buildAppbarTitle('Add New Shopping Place'),
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
                buildTextFormField('title', widget.data.title, 1, _title),
                SizedBox(height: 20),
                Container(
                  child: Text('Address:',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField(
                      'address', widget.data.address, 1, _address),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Type:',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('type',
                      widget.data.type, 1, _type),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Distance:',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField(
                      'distance', widget.data.distance, 1, _distance),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Price range:',
                      style: buildTextStyle(16.0, Color(0xfff35963))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField(
                      'price range', widget.data.priceRannge, 1, _pricerange),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        //backend code to update
                        widget.data.title = _title.text;
                        widget.data.address = _address.text;
                        widget.data.distance = _distance.text;
                        widget.data.type = _type.text;
                        widget.data.priceRannge = _pricerange.text;
                        shopCards.add(widget.data);
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
        filled: true,
        fillColor: Colors.grey[200],
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
