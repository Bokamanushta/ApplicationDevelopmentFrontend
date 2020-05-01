import 'package:flutter/material.dart';
import 'package:utm_x_change/Router.dart';
import 'package:utm_x_change/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: home,
      onGenerateRoute: Router.createRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}