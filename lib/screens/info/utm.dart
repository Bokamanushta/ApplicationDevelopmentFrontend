import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';

class UTM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              imageBuilder(context),
              bodyBuilder(context),
            ],
          ),
        ),
      ),
    );
  }

  Container bodyBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0), topLeft: Radius.circular(25.0)),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Sprawling across 1,148 hectares of lush greenery in the pristine environment of Johor  Bahru, the main campus of Johor Bahru is in Iskandar Malaysia region, a dynamic economic corridor at the southern tip of Peninsular Malaysia and just acause way-apart from Singapore.',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/utmbg.png',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Johor Bahru also known as JB. The estimated population here is around 500,000.The Major industries here includes tourism, electronics, petrochemical refinery and shipbuilding.',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          timelineButton(context),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/utmNature.jpg',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Universiti Teknologi Malaysia (UTM) is a Malaysian public research-intensive university in engineering, science and technology located in Skudai, Johor and it has a branch campus in Kuala Lumpur. UTM is a graduate-focused university with 56% of its student population consisting of postgraduate students, the highest in Malaysia. As of 2020, UTM has more than 5,000 international students from more than 120 countries, the highest research university in Malaysia.',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/utmMosque.jpg',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Text(
              "The university has a library (known as Perpustakaan Sultanah Zanariah) with online facilities. There are free bus services, as well as local and international restaurants on campus. The Webometrics Ranking of World Universities places UTM in the fourth place in the South East Asia Region, and the top in Malaysia. In the QS University Rankings, it placed 100 in the 'Engineering & Technology Universities' category among other world ranked universities in 2016 UTM aims to achieve the status of a global university and rank among 50 of the world's best universities by 2020. Another initiative is the formation of the Iskandar Malaysia Academic Partnership (IMAP) resulting from the Inaugural UTM University Presidents Forum.",
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Text(
              "For more information please head up to our ifficial website utm.my/about",
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Container timelineButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, utmTimline),
        child: Card(
          elevation: 5.0,
          color: Color(0xff82153F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'UTM Hall of Fame',
                style: buildTextStyle(16.0, Colors.white, FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container imageBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      child: Image.asset(
        'assets/images/utm.jpg',
        fit: BoxFit.fitWidth,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      // elevation: 0,
      backgroundColor: Color(0xff82153F),
      title: Text(
        'About UTM',
        style: buildTextStyle(22.0, Colors.white, FontWeight.bold),
      ),
    );
  }

  TextStyle buildTextStyle(size, color, weight) {
    return TextStyle(
      fontFamily: 'Overlock',
      fontWeight: weight,
      fontSize: size,
      color: color,
    );
  }
}
