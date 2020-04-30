import "package:flutter/material.dart";
import 'package:timeline/model/timeline_model.dart';
import 'package:timeline/timeline.dart';

class TimelineBuilder extends StatelessWidget {
  final List<TimelineModel> list = [
    TimelineModel(
        id: "1",
        description: "Treacher Technical School, WeldRoad (Jalan RajaChulan)",
        title: "1904"),
    TimelineModel(
        id: "2",
        description: "Technical School, BatuLane Bangunan Muzium, BukitNanas",
        title: "1906"),
    TimelineModel(
        id: "3",
        description: "TechnicalSchool,Jalan Briickfields ---JKR",
        title: "1925"),
    TimelineModel(
        id: "4", description: "TechnicalSchool, HighStreet", title: "1930"),
    TimelineModel(
        id: "5", description: "Technical College –Diploma", title: "1946"),
    TimelineModel(
        id: "6", description: "Technical College, Jalan Gurney", title: "1955"),
    TimelineModel(
        id: "7",
        description: "Technical College –Professional Programmes",
        title: "1960"),
    TimelineModel(
        id: "8",
        description: "National Institute of Technology (ITK) –UniversityStatus",
        title: "1972"),
    TimelineModel(
        id: "9",
        description: "Universiti Teknologi Malaysia (UTM)",
        title: "1975"),
    TimelineModel(
        id: "10",
        description: "Johor  Bahru  Campus (1,145hectare)",
        title: "1985"),
    TimelineModel(id: "11", description: "Research University", title: "2010"),
    TimelineModel(
        id: "12",
        description:
            "Malaysian Ministry of Higher Education declared UTM to be the first Malaysian university to attain full autonomy from the government",
        title: "2012"),
    TimelineModel(id: "13", description: "Synergy 4.0", title: "2018"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff82153F),
        title: Text('UTM Hall of Fame',
            style: buildTextStyle(22.0, Colors.white, FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
        child: TimelineComponent(
          timelineList: list,
          lineColor:
              Color(0xff722758), // Defaults to accent color if not provided
          headingColor: Color(0xff82153F), // Defaults to black if not provided
          descriptionColor:
              Color(0xff5a3667), // Defaults to grey if not provided
        ),
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
