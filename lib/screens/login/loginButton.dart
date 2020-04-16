import 'package:flutter/material.dart';
import 'package:utm_x_change/screens/home/home.dart';


class LoginButton extends StatelessWidget {

  var _formKey = GlobalKey<FormState>();
  var _username = TextEditingController();
  var _password = TextEditingController();

  LoginButton(this._formKey,this._username,this._password);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_formKey.currentState.validate()) {
          if (_username.text == 'admin' && _password.text == 'admin') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          } else {
            Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('Incorrect Username or Password')));
          }
        }
      },
      child: Container(
        height: 56.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.0),
          gradient: LinearGradient(
              colors: [Color(0xFFC0C0C0), Color(0xFFFB415B)],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft),
        ),
        child: Center(
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Color(0xff82153F),
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
