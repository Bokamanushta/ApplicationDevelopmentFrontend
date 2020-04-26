import 'package:flutter/material.dart';

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({@required this.text});

  @override
  _DescriptionTextWidgetState createState() =>
      new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  String firstHalf;
  String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 50) {
      firstHalf = widget.text.substring(0, 50);
      secondHalf = widget.text.substring(50, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: secondHalf.isEmpty
          ? Text(
              firstHalf,
              style: buildTextStyle(),
            )
          : Column(
              children: <Widget>[
                Text(
                  flag ? (firstHalf + "...") : (firstHalf + secondHalf),
                  style: buildTextStyle(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: flag
                          ? Icon(Icons.arrow_drop_down)
                          : Icon(Icons.arrow_drop_up),
                      onPressed: () => setState(() => flag = !flag),
                    )
                  ],
                ),
              ],
            ),
    );
  }

  TextStyle buildTextStyle() {
    return TextStyle(
        fontFamily: 'Overlock',
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black);
  }
}
