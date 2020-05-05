import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';

class LoginButton extends StatelessWidget {
  final _formKey;
  final _username;
  final _password;

  LoginButton(this._formKey, this._username, this._password);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_formKey.currentState.validate()) {
          if (_username.text == 'stud' && _password.text == 'stud') {
            Navigator.pushNamed(context, home);
          } else if (_username.text == 'admin' && _password.text == 'admin') {
            Navigator.pushNamed(context, staffHome);
          } else {
            Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('Incorrect Username or Password')));
          }
        }
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xff881642),
        ),
        child: Center(
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
