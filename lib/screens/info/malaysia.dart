import 'package:flutter/material.dart';
import 'package:utm_x_change/screens/info/barChart.dart';

class Malaysia extends StatelessWidget {
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
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.27),
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
              'Malaysia is divided into West Malaysia  (Peninsular Malaysia) and East  Malaysia (Sabah & Sarawak)',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Malaysia is a Multi racials country. Among the race is Malay (majority), Chinese, Indian, Sikhs, Cina  Peranakan/Baba-Nyonya, India Peranakan  (Chitty), OrangAsli (Ab original People), Dayak, Iban, Bidayuh, Murut, Melanau, Kadazan  Dusun, Penan etc. ',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/multinational.jpg',
                height: 200,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'With this, comes a myriad of language spoken, religions, festivals, food & customs',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Because of the multi cultural heritage, many religious festivals are also public holidays and are celebrated  nationwide regardless of race or belief. There are also Malay, Tamil, English, Mandarin and other Chinese dialects. Most Malaysians are multilingual.',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          Barchart(),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Islam is the official religion. However, the rights of other religions are protected under The Constitution and can be practiced freely throughout Malaysia. Among other religions include Christianity, Buddhism, Hinduism, andSikhism.',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/king.jpg',
                height: 200,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Malaysian government is parliamentary democracy. The head of state is Yang Dipertuan Agong and the head of government is Prime Ministe. There are two types of public holidays. National levels & statelevels. Among of 15 days of public holiday, some of them are celebrated Eid Fitri, EidAdha, Thaipusam, Chinese New Year,Deepavali, Christmas, Wesak, Hari Gawai, Tadau Keamatan etc.',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/money.jpg',
                height: 200,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Malaysian currency is Ringgit (RM). One Dollar is equevilant to 4.2 RM. Most of the local shop do not accept caard payment or online payment. So, It is recommended to carry cash wity you if you want to roam outside.',
              style: buildTextStyle(16.0, Colors.black, FontWeight.bold),
            ),
          ),
          SizedBox(height:10)
        ],
      ),
    );
  }

  Container imageBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/images/malaysia.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xff010066),
      title: Text(
        'About Malaysia',
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
