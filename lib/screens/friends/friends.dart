import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';
import 'package:utm_x_change/models/mockData.dart';

class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5A3667),
      appBar: buildAppBarForShopping(),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Image.asset(
              'assets/images/friends.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          bodyBuilder(),
        ],
      ),
    );
  }

  DraggableScrollableSheet bodyBuilder() {
    return DraggableScrollableSheet(
        initialChildSize: 0.65,
        minChildSize: 0.65,
        // maxChildSize: 0.8,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(23.0),
                  topLeft: Radius.circular(23.0)),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return buildListTile(index);
              },
              controller: scrollController,
              itemCount: profiles.length,
            ),
          );
        });
  }

  ListTile buildListTile(int index) {
    return ListTile(
      onTap: () => navigate(index),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(profiles[index].image),
        backgroundColor: Colors.transparent,
      ),
      title: Text(
        profiles[index].name,
        style: buildTextStyle(16.0),
      ),
      subtitle: Text(profiles[index].country,style: buildTextStyle(14.0)),
    );
  }

  void navigate(index) async{
    await Navigator.pushNamed(context, descFriends, 
      arguments: profiles[index],
      );
  }

  Icon buildIcon(icon,color) {
    return Icon(
      icon,
      color: color,
    );
  }

  TextStyle buildTextStyle(size) {
    return TextStyle(
      color: Color(0xff5A3667),
      fontFamily: 'Overlock',
      fontWeight: FontWeight.bold,
      fontSize: size,
    );
  }

  AppBar buildAppBarForShopping() {
    return AppBar(
      backgroundColor: Color(0xff7faef2),
      elevation: 0,
      centerTitle: true,
      title: Text("Friends",
          style: TextStyle(
            fontFamily: 'Overlock',
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          )),
    );
  }
}
