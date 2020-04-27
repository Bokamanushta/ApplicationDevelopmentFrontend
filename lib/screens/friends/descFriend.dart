import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:utm_x_change/models/profileInfo/profileInfo.dart';

class ProfileHelper extends StatelessWidget {
  final ProfileInfo profile;

  ProfileHelper({this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff722758),
        title: Text(
          'Profile',
          style: TextStyle(
              fontFamily: 'overlock',
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xff722758), Color(0xff5a3667)]),
              ),
            ),
            clipper: ProfileClipper(),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: MediaQuery.of(context).size.height * .15,
            child: Column(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(profile.image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(75)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.black54,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  children: <Widget>[
                    buildText(profile.name, 23.0, FontWeight.bold),
                    SizedBox(height: 10),
                    buildText(profile.university, 15.0, FontWeight.normal),
                    SizedBox(height: 5),
                    buildText(profile.country, 15.0, FontWeight.normal),
                    SizedBox(height: 5),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.all(16.0),
                      child: buildText(
                          profile.description, 17.0, FontWeight.normal),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNav(),
    );
  }

  Text buildText(text, size, weight) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'overlock',
        fontWeight: weight,
        fontSize: size,
      ),
    );
  }

  Row bottomNav() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        socialMedia(FontAwesomeIcons.facebook),
        socialMedia(FontAwesomeIcons.instagram),
        socialMedia(FontAwesomeIcons.linkedin),
        socialMedia(FontAwesomeIcons.whatsapp),
      ],
    );
  }

  IconButton socialMedia(name) {
    return IconButton(
        icon: FaIcon(
          name,
          color: Color(0xff722758),
        ),
        onPressed: null);
  }
}

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 2.2);
    path.lineTo(size.width + 500, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
