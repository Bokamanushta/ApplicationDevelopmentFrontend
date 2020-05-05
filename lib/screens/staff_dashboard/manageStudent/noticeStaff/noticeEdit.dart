import 'package:flutter/material.dart';
import 'package:utm_x_change/models/mockData.dart';

class StaffUpdateNotice extends StatefulWidget {
  final data;
  StaffUpdateNotice({this.data});

  @override
  _StaffUpdateNoticeState createState() => _StaffUpdateNoticeState();
}

class _StaffUpdateNoticeState extends State<StaffUpdateNotice> {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _date = TextEditingController();
  final _description = TextEditingController();
  final _attatchment = TextEditingController();

  @override
  void initState() {
    super.initState();
    _title.text = widget.data['notice'].title;
    _date.text = widget.data['notice'].date;
    _description.text = widget.data['notice'].description;
    _attatchment.text = widget.data['notice'].attatchment;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: buildAppbarTitle('Edit Notices'),
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
                buildTextFormField(
                    'title', widget.data['notice'].title, 1, _title),
                SizedBox(height: 20),
                Container(
                  child: Text('Date:',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('date',
                      widget.data['notice'].address, 1, _date),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Description:',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('description',
                      widget.data['notice'].description, 7, _description),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Attatchment:',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField(
                      'attatchment', widget.data['notice'].distance, 1, _attatchment),
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
                        noticeList[widget.data['index']].title = _title.text ;
                        noticeList[widget.data['index']].description = _description.text ;
                        noticeList[widget.data['index']].date = _date.text ;
                        noticeList[widget.data['index']].attatchment = _attatchment.text ;
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
