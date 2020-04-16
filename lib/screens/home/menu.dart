import 'package:flutter/material.dart';
import 'package:utm_x_change/models/MenuIconButton.dart';
import 'package:utm_x_change/screens/home/socialMediaSection.dart';

class DashboardMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.width / 2.3,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MenuIcon(Icons.thumbs_up_down, "Do's & Dont's"),
                MenuIcon(Icons.place, "Places"),
                MenuIcon(Icons.info, "Info"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MenuIcon(Icons.local_mall, "Shopping"),
                MenuIcon(Icons.assignment, "Checklist"),
                MenuIcon(Icons.hotel, "Accomodotion"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MenuIcon(Icons.description, "Notice"),
                MenuIcon(Icons.attach_money, "Living Cost"),
                MenuIcon(Icons.people, "Friends"),
              ],
            ),
          ),
          SizedBox(height: 10),
          SocialMedia(),
        ]),
      ),
    );
  }
}
