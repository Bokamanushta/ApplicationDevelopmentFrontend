import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';
import 'package:utm_x_change/screens/home/home.dart';
import 'package:utm_x_change/screens/login/logiin.dart';
import 'package:utm_x_change/screens/profile/profile.dart';
import 'package:utm_x_change/screens/settings/settings.dart';
import 'package:utm_x_change/screens/shopping/shopping.dart';
import 'package:utm_x_change/screens/splash/my_splash.dart';

class Router{
  static Route<dynamic> createRoute(settings){
    switch(settings.name){
      case splash: return MaterialPageRoute(builder: (context)=> SplashScreen());
      case home: return MaterialPageRoute(builder: (context)=> Home());
      case profile: return MaterialPageRoute(builder: (context)=> Profile());
      case setings: return MaterialPageRoute(builder: (context)=> Settings());
      case shopping: return MaterialPageRoute(builder: (context)=> Shopping());
      case login: return MaterialPageRoute(builder: (context)=> Login());
    }
    return null;
  }
}