import 'package:flutter/material.dart';

AppBar myAppBar(){
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: Lol(),
      actions: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          child: Image.asset('assets/customIcons/icon_red.png'),
        ),
      ]);
}


  class Lol extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return IconButton(
      icon: Icon(Icons.menu, size: 35 ,color: Color(0xff82153F)),
      onPressed: () => Scaffold.of(context).openDrawer(),
    );
    }
  }