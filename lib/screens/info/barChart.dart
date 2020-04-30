import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Barchart extends StatefulWidget {
  Barchart({Key key}) : super(key: key);

  @override
  _BarchartState createState() => _BarchartState();
}

class _BarchartState extends State<Barchart> {
  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Color(0xff2a9d8f),
    Color(0xff264653),
    Color(0xffe9c46a),
    Color(0xfff4a261),
    Color(0xffe76f51),
  ];

  void initState() {
    super.initState();
    dataMap.putIfAbsent("Muslims", () => 61.3);
    dataMap.putIfAbsent("Buddhis", () => 19.8);
    dataMap.putIfAbsent("Christianity", () => 9.2);
    dataMap.putIfAbsent("Hinduism", () => 6.3);
    dataMap.putIfAbsent("Others", () => 3.4);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: PieChart(
          dataMap: dataMap,
          animationDuration: Duration(milliseconds: 2000),
          chartLegendSpacing: 32.0,
          chartRadius: MediaQuery.of(context).size.width / 2.7,
          showChartValuesInPercentage: true,
          showChartValues: true,
          showChartValuesOutside: false,
          chartValueBackgroundColor: Colors.grey[200],
          colorList: colorList,
          showLegends: true,
          legendPosition: LegendPosition.right,
          decimalPlaces: 1,
          showChartValueLabel: true,
          initialAngle: 0,
          chartValueStyle: defaultChartValueStyle.copyWith(
            color: Colors.blueGrey[900].withOpacity(0.9),
          ),
          chartType: ChartType.disc,
        ),
      ),
    );
  }
}
