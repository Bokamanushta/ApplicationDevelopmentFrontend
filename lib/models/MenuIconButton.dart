import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  final IconData _icon;
  final String _text;

  MenuIcon(this._icon, this._text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
      ),
      elevation: 10,
      onPressed: () {
        Navigator.pushNamed(context, '/shopping');
      },
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
            width: 80,
          ),
          Icon(
            _icon,
            size: 45,
            color: Color(0xff82153F),
          ),
          Text(
            _text,
            style: TextStyle(
                fontSize: 13,
                color: Color(0xff82153F),
                fontWeight: FontWeight.bold,
                fontFamily: 'Overlock'),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
