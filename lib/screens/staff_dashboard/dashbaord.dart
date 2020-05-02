import 'package:flutter/material.dart';
import 'package:utm_x_change/models/underConstruction.dart';
import 'package:utm_x_change/models/bottomNavigationBarItem.dart';
import 'package:utm_x_change/screens/staff_dashboard/appbarStaff.dart';
import 'package:utm_x_change/screens/staff_dashboard/dashBody.dart';
import 'package:utm_x_change/screens/staff_dashboard/staffDrawer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  static var _pages = <Widget>[ UnderConstruction(),DashBody()];
  int _index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: staffAppBar(_index),
      body: _pages.elementAt(_index),
      drawer: StaffDrawer(),
      bottomNavigationBar: myBottomNavigation(),
    );
  }

  BottomNavigationBar myBottomNavigation() {
    return BottomNavigationBar(
      elevation: 5,
      backgroundColor: Color(0xff2c4260).withOpacity(0.9),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[300],
      currentIndex: _index,
      onTap: (int index){setState(() {_index = index;});},
      type: BottomNavigationBarType.fixed,
      items: [
        myBottomItem('Message', Icons.mail),
        myBottomItem('Dashboard', Icons.dashboard),
      ],
    );
  }
}
