import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5A3667),
      appBar: buildAppBarForShopping(),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Image.asset(
              'assets/images/shopping_home.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.7,
              minChildSize: 0.7,
              // maxChildSize: 0.8,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0)),
                  ),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return buildCard();
                    },
                    controller: scrollController,
                    itemCount: 40,
                  ),
                );
              }),
        ],
      ),
    );
  }

  Card buildCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text('data'),
    );
  }

  AppBar buildAppBarForShopping() {
    return AppBar(
      backgroundColor: Color(0xff5A3667),
      elevation: 0,
      centerTitle: true,
      title: Text('List of Shopping Places',
          style: TextStyle(
            fontFamily: 'Overlock',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          )),
    );
  }
}
