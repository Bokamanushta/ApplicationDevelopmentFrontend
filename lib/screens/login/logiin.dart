import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:utm_x_change/screens/login/loginButton.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  //from key and input values for login
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastLinearToSlowEaseIn,
    ));
    animationController.forward();
  }

  Container inputField(var hint, controller) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[100]),
        ),
      ),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        controller: controller,
        validator: (value) {
          if (value.isEmpty)
            return 'Field can not be empty';
          else
            return null;
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontFamily: 'overlock',
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Color(0xff21254A),
          body: Transform(
            transform: Matrix4.translationValues(animation.value * width, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  shapeBuilder(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        welcomeText(),
                        SizedBox(height: 10),
                        formBuilder(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Container formBuilder(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.transparent,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            inputField('Username', _username),
            inputField('Password', _password),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Color(0xffBF2460)),
              ),
            ),
            SizedBox(height: 20),
            LoginButton(_formKey, _username, _password),
          ],
        ),
      ),
    );
  }

  Text welcomeText() {
    return Text(
      'Hello there,\nWelcome back',
      style: TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontFamily: 'overlock',
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Container shapeBuilder() {
    return Container(
      height: 250,
      child: Stack(children: <Widget>[
        Positioned(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/shape.png'),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
