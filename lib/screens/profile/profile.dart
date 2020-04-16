import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff722758),
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
            top: MediaQuery.of(context).size.height / 6,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/avator.png'),
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
                  Text(
                    'Mohammad Yeasin Al Fahad',
                    style: TextStyle(
                      fontFamily: 'overlock',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Universiti Teknologi Malaysia (UTM)',
                    style: TextStyle(
                      fontFamily: 'overlock',
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Malaysia',
                    style: TextStyle(
                      fontFamily: 'overlock',
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Hi there, I am studying software Engineering in UTM. I love to play games in my leisure time. I enjoy meetting with new peoples. Feel free to send me message.',
                      style: TextStyle(
                        fontFamily: 'overlock',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  RaisedButton.icon(
                    color: Color(0xff722758),
                    onPressed: () {
                      dialogMaker(context);
                    },
                    icon: Icon(Icons.edit, color: Colors.white),
                    label: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontFamily: 'overlock',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          socialMedia(FontAwesomeIcons.facebook),
          socialMedia(FontAwesomeIcons.instagram),
          socialMedia(FontAwesomeIcons.linkedin),
          socialMedia(FontAwesomeIcons.whatsapp),
        ],
      ),
    );
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

IconButton socialMedia(name) {
  return IconButton(
      icon: FaIcon(
        name,
        color: Color(0xff722758),
      ),
      onPressed: null);
}

RaisedButton myButton(icon, btxt, function) {
  return RaisedButton.icon(
    color: Color(0xff722758),
    onPressed: function,
    icon: Icon(icon, color: Colors.white),
    label: Text(
      btxt,
      style: TextStyle(
        fontFamily: 'overlock',
        fontSize: 18,
        color: Colors.white,
      ),
    ),
  );
}

void dialogMaker(BuildContext context) {
  TextField socialMedia(icon, name) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0, top: 12.0),
          child: FaIcon(icon, color: Color(0xff722758)),
        ),
        hintStyle: TextStyle(
          fontFamily: 'overlock',
          fontSize: 14,
        ),
        hintText: 'paste your $name url here',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
      ),
    );
  }

  Dialog simpleDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    backgroundColor: Colors.white,
    child: Container(
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.8,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding:const EdgeInsetsDirectional.only(start: 0.0, top: 0.0),
                  child: Icon(Icons.description, color: Color(0xff722758)),
                ),
                labelText: 'Short Description',
                labelStyle: TextStyle(
                  fontFamily: 'overlock',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                hintStyle: TextStyle(
                  fontFamily: 'overlock',
                  fontSize: 18,
                ),
                hintText: 'Write your description here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
            SizedBox(height: 30),
            socialMedia(FontAwesomeIcons.facebook, 'facebook'),
            SizedBox(height: 30),
            socialMedia(FontAwesomeIcons.instagram, 'instagram'),
            SizedBox(height: 30),
            socialMedia(FontAwesomeIcons.linkedin, 'linkedin'),
            SizedBox(height: 30),
            socialMedia(FontAwesomeIcons.whatsapp, 'whatsapp'),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                myButton(Icons.update, 'Update', () {
                  Navigator.of(context).pop();
                }),
                myButton(Icons.cancel, 'cancel', () {
                  Navigator.of(context).pop();
                }),
              ],
            )
          ],
        ),
      ),
    ),
  );

  showDialog(context: context, builder: (BuildContext context) => simpleDialog);
}