import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';
import 'package:utm_x_change/models/mockData.dart';

class DosDontsStaff extends StatefulWidget {
  @override
  _DosDontsStaffState createState() => _DosDontsStaffState();
}

class _DosDontsStaffState extends State<DosDontsStaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff722758),
      appBar: buildAppBarForShopping(),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Image.asset(
              'assets/images/dosanddonts.png',
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
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(23.0),
                  topLeft: Radius.circular(23.0)),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return buildListTile(index);
              },
              controller: scrollController,
              itemCount: dodontList.length,
            ),
          );
        });
  }

  ListTile buildListTile(int index) {
    return ListTile(
      onTap: () => navigate(index),
      title: Text(
        dodontList[index].title,
        style: buildTextStyle(18.0),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: (dodontList[index].type != 'do') ? Icon(Icons.edit,size: 15,color: Color(0xfff35963)) : Icon(Icons.edit,size: 15,color: Color(0xff5dbf98)),
            onPressed: (){},
            ),
          IconButton(
            icon: (dodontList[index].type != 'do') ? Icon(Icons.delete,size: 15,color: Color(0xfff35963)) : Icon(Icons.delete,size: 15,color: Color(0xff5dbf98)),
            onPressed: (){},
            ),
        ],
      ),
      trailing: (dodontList[index].type != 'do') ? buildIcon(Icons.thumb_down,Color(0xfff35963)) : buildIcon(Icons.thumb_up,Color(0xff5dbf98)),
    );
  }

  void navigate(index) async{
    await Navigator.pushNamed(context, descOfDd, 
      arguments: dodontList[index],
      );
  }

  Icon buildIcon(icon,color) {
    return Icon(
      icon,
      color: color,
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
      backgroundColor: Color(0xff722758),
      elevation: 0,
      centerTitle: true,
      title: Text("Do's and Dont's",
          style: TextStyle(
            fontFamily: 'Overlock',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          )),
    );
  }
}
