import 'package:cake/provider/provider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'image_assets.dart';


LineChartData laba_dataDiagram() {
  return LineChartData(
    lineTouchData: LineTouchData(
      touchTooltipData: LineTouchTooltipData(
        tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
      ),
      touchCallback: (LineTouchResponse touchResponse) {},
      handleBuiltInTouches: true,
    ),
    gridData: FlGridData(
      show: true,
    ),
    titlesData: FlTitlesData(
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 22,
        textStyle: const TextStyle(
          color: Color(0xff72719b),
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        margin: 15,
        getTitles: (value) {
          switch (value.toInt()) {
            case 0:
              return '15\nmaret';
            case 1:
              return '16\nmaret';
            case 2:
              return '17\nmaret';
            case 3:
              return '18\nmaret';
            case 4:
              return '19\nmaret';
            case 5:
              return '20\nmaret';
            case 6:
              return '21\nmaret';
          }
          return '';
        },
      ),
      leftTitles: SideTitles(
        showTitles: true,
        textStyle: const TextStyle(
          color: Color(0xff75729e),
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 1:
              return '50.000';
            case 2:
              return '100.000';
            case 3:
              return '150.000';
            case 4:
              return '200.000';
            case 5:
              return '250.000';
            case 6:
              return '300.000';
          }
          return '';
        },
        // margin: 50,
        reservedSize: 45,
      ),
    ),
    borderData: FlBorderData(
      show: true,
      border: const Border(
        bottom: BorderSide(
          color: Color(0xff4e4965),
          width: 4,
        ),
        left: BorderSide(
          color: Colors.transparent,
        ),
        right: BorderSide(
          color: Colors.transparent,
        ),
        top: BorderSide(
          color: Colors.transparent,
        ),
      ),
    ),
    minX: 0,
    maxX: 6,
    maxY: 7,
    minY: 0,
    lineBarsData: labaBarData(),
  );
}

List<LineChartBarData> labaBarData() {
  final LineChartBarData lineChartBarData1 = LineChartBarData(
    spots: [
      FlSpot(0, 2),
      FlSpot(1, 1.5),
      FlSpot(2, 1.4),
      FlSpot(3, 3.4),
      FlSpot(4, 2),
      FlSpot(5, 2.2),
      FlSpot(6, 1.8),
    ],
    isCurved: true,
    colors: [
      Colors.blue,
    ],
    barWidth: 4,
    isStrokeCapRound: true,
    dotData: FlDotData(
      show: false,
    ),
    belowBarData: BarAreaData(
      show: false,
    ),
  );
  return [
    lineChartBarData1,
  ];
}

LineChartData prediction() {
  return LineChartData(
    lineTouchData: LineTouchData(
      touchTooltipData: LineTouchTooltipData(
        tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
      ),
      touchCallback: (LineTouchResponse touchResponse) {},
      handleBuiltInTouches: true,
    ),
    gridData: FlGridData(
      show: false,
    ),
    titlesData: FlTitlesData(
      bottomTitles: SideTitles(
        showTitles: true,
        // reservedSize: 22,
        textStyle: const TextStyle(
          color: Color(0xff72719b),
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        // margin: 10,
        getTitles: (value) {
          switch (value.toInt()) {
            case 0:
              return '15\nmaret';
            case 1:
              return '16\nmaret';
            case 2:
              return '17\nmaret';
            case 3:
              return '18\nmaret';
            case 4:
              return '19\nmaret';
          }
          return '';
        },
      ),
      leftTitles: SideTitles(
        showTitles: false,
      ),
    ),
    borderData: FlBorderData(
      show: false,
    ),
    minX: 0,
    maxX: 4,
    maxY: 3,
    minY: 0,
    lineBarsData: linesBarDataProdiction(),
  );
}

List<LineChartBarData> linesBarDataProdiction() {
  final LineChartBarData lineChartBarData1 = LineChartBarData(
    spots: [
      FlSpot(0, 2),
      FlSpot(1, 1.5),
      FlSpot(2, 1.4),
      FlSpot(3, 3.4),
      FlSpot(4, 2),
    ],
    isCurved: true,
    colors: [
      Colors.blue,
    ],
    barWidth: 4,
    isStrokeCapRound: true,
    dotData: FlDotData(
      show: false,
    ),
    belowBarData: BarAreaData(
      show: false,
    ),
  );
  return [
    lineChartBarData1,
  ];
}

class PieChartSample2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          image: background_png,
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
                color: Colors.transparent.withOpacity(0.2),
                blurRadius: 2.0,
                spreadRadius: 1.0,
                offset: Offset(
                  0.0,
                  1.0,
                ))
          ],
          color: Colors.white,
        ),
        child: Consumer<AppProvider>(
            builder: (context, providers, _) => Column(
                  children: [
                    ListTile(
                        title: Text(
                          'Jumlah Penjualan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                          hint: Text("Day"),
                          onChanged: (String newValue) {},
                          items: providers.list_dd,
                        ))),
                    AspectRatio(
                      aspectRatio: 2.0,
                      child: Row(
                        children: <Widget>[
                          const SizedBox(
                            height: 18,
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Jumlah Penjualan\n95",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.redAccent[200],
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  child: AspectRatio(
                                    aspectRatio: 0.5,
                                    child: PieChart(
                                      PieChartData(
                                          borderData: FlBorderData(
                                            show: false,
                                          ),
                                          sectionsSpace: 0,
                                          centerSpaceRadius: 60,
                                          sections: showingSections()),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Indicator(
                                color: Color(0xff0293ee),
                                text: 'Acer   30,5 Lagi',
                                isSquare: true,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Indicator(
                                color: Color(0xfff8b250),
                                text: 'Asus   30,5 Lagi',
                                isSquare: true,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Indicator(
                                color: Color(0xff845bef),
                                text: 'Dell   30,5 Lagi',
                                isSquare: true,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Indicator(
                                color: Color(0xff13d38e),
                                text: 'HP   30,5 Lagi',
                                isSquare: true,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Center(
                                child: Text(
                                  "Jumlah Produk: 150",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 28,
                          ),
                        ],
                      ),
                    )
                  ],
                )));
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final double radius = 30;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 40,
            title: '',
            radius: radius,
            titleStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.orange,
            value: 30,
            title: '',
            radius: radius,
            titleStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 15,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
                fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 15,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
                fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        default:
          return null;
      }
    });
  }
}

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key key,
    this.color,
    this.text,
    this.isSquare,
    this.size = 16,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
        )
      ],
    );
  }
}
