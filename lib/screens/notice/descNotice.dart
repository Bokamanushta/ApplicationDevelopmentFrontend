import 'package:flutter/material.dart';
import 'package:utm_x_change/models/noticeInfo/noticeInfo.dart';

class NoticeHelper extends StatelessWidget {
  final NoticeInfo data;
  NoticeHelper({this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text(
          data.title,
          style: buildTextStyle(22.0, Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Container(
                child: Center(
                  child: buildImage('assets/images/like.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Date:',
                        style: buildTextStyle(20.0, Colors.black),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text(data.date,
                          style: buildTextStyle(20.0, Colors.black)),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Text('Description:',
                          style: buildTextStyle(20.0, Colors.black)),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text(data.description,
                          style: buildTextStyle(18.0, Colors.black)),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Text('Attatchment:',
                          style: buildTextStyle(22.0, Colors.black)),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text(data.attatchment,
                          style: buildTextStyle(18.0, Colors.black)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ), 
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