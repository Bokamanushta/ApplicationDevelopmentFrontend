import 'package:flutter/material.dart';

class Guideline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/guideline.png'),
          fit: BoxFit.cover,
          ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}