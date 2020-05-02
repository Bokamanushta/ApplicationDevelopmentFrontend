import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';
import 'package:utm_x_change/models/mockData.dart';

class Notice extends StatelessWidget {
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
              'assets/images/notice.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          bodyBuilder(),
        ],
      ),
    );
  }

  DraggableScrollableSheet bodyBuilder() {
    return DraggableScrollableSheet(
        initialChildSize: 0.65,
        minChildSize: 0.65,
        // maxChildSize: 0.8,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(23.0),
                  topLeft: Radius.circular(23.0)),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return buildListTile(index, context);
              },
              controller: scrollController,
              itemCount: noticeList.length,
            ),
          );
        });
  }

  ListTile buildListTile(int index, context) {
    return ListTile(
      onTap: () => navigate(index, context),
      leading: Icon(
        Icons.assistant,
        color: Color(0xff3e2d4a),
      ),
      title: Text(
        noticeList[index].title,
        style: buildTextStyle(16.0),
      ),
      trailing: Text(noticeList[index].date, style: buildTextStyle(14.0)),
    );
  }

  void navigate(index, context) async {
    await Navigator.pushNamed(
      context,
      descNotice,
      arguments: noticeList[index],
    );
  }

  TextStyle buildTextStyle(size) {
    return TextStyle(
      color: Color(0xff5A3667),
      fontFamily: 'Overlock',
      fontWeight: FontWeight.bold,
      fontSize: size,
    );
  }

  AppBar buildAppBarForShopping() {
    return AppBar(
      backgroundColor: Color(0xff3e2d4a),
      elevation: 0,
      centerTitle: true,
      title: Text("Notices",
          style: TextStyle(
            fontFamily: 'Overlock',
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          )),
    );
  }
}
