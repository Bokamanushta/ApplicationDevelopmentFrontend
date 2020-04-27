import 'package:flutter/material.dart';
import 'package:utm_x_change/models/checklist.dart';

class CheckListHelper extends StatefulWidget {
  final CheckListTemplate list;

  CheckListHelper({this.list});
  @override
  _CheckListHelperState createState() => _CheckListHelperState();
}

class _CheckListHelperState extends State<CheckListHelper> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff5A3667),
      appBar: buildAppBarForShopping(),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Image.asset(
              widget.list.imageLocation,
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
                return buildListTile(index);
              },
              controller: scrollController,
              itemCount: widget.list.documentList.length,
            ),
          );
        });
  }

  CheckboxListTile buildListTile(int index) {
    return CheckboxListTile(
      activeColor: Colors.green,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.list.documentList[index].title,
          style: buildTextStyle(18.0),
        ),
      ),
      value: widget.list.documentList[index].value,
      onChanged: (bool value) => setState(() => widget.list.documentList[index].value = value),
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
      backgroundColor: Color(0xff80dde9),
      elevation: 0,
      centerTitle: true,
      title: Text(widget.list.title,
          style: TextStyle(
            fontFamily: 'Overlock',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          )),
    );
  }
}
