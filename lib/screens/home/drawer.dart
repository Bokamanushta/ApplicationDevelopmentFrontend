import 'package:flutter/material.dart';
import 'package:utm_x_change/screens/profile/profile.dart';
import 'package:utm_x_change/screens/settings/settings.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        Container(
          color: Color(0xff82153F),
          padding: EdgeInsets.all(40.0),
          child: Image.asset('assets/customIcons/icon_transparent.png'),
        ),
        Container(
          color: Colors.transparent,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, 
          children: <Widget>[
            gestureForDrawer(context,(){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Profile()));},
              'Profile',
              Icons.account_circle,),
            gestureForDrawer(context,(){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Profile()));},
              'Share',
              Icons.share,),
            gestureForDrawer(context,(){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));},
              'Settings',
              Icons.settings,),
          ]),
        ),
      ]),
    );
  }

  GestureDetector gestureForDrawer(context,function,text,icon){
    return GestureDetector(
      onTap: function,
      child: ListTile(
          title: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          leading: Icon(icon,
              color: Colors.black, size: 30)),
    );
  }
}
