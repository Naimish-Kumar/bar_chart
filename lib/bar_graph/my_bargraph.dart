import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bar_graph/bar_data.dart';

class MyBarGraph extends StatelessWidget {
  List<double> data;
  MyBarGraph({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    double maxY = 24;
    BarData barData = BarData(
      one: data[0],
      two: data[1],
      three: data[2],
      four: data[3],
      five: data[4],
      six: data[5],
      saven: data[6],
    );
    barData.initlizeBarData();
    return Container(
      margin: const EdgeInsets.all(20),
      child: BarChart(
        BarChartData(
          gridData: FlGridData(
              horizontalInterval: 5.5,
              getDrawingHorizontalLine: (value) {
                return value == 22
                    ? const FlLine(color: Colors.red)
                    : const FlLine(
                        color: Color.fromARGB(45, 0, 0, 0),
                      );
              }),
          titlesData: FlTitlesData(
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            leftTitles: AxisTitles(sideTitles: _leftTitles),
          ),
          maxY: maxY,
          minY: 0,
          borderData: FlBorderData(
            border: const Border(
                left: BorderSide(width: 1),
                bottom: BorderSide(
                  width: 1,
                ),
                right: BorderSide.none,
                top: BorderSide.none),
          ),
          barGroups: barData.myBarData
              .map(
                (data) => BarChartGroupData(
                  x: data.x,
                  barRods: [
                    BarChartRodData(
                      toY: data.y,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

Widget horizontalLine() {
  return Container(
    margin: const EdgeInsets.only(left: 40, top: 35),
    width: 320,
    height: 2,
    color: const Color.fromARGB(255, 204, 39, 27),
  );
}

SideTitles get _leftTitles => SideTitles(
      showTitles: true,
      getTitlesWidget: (value, meta) {
        String text = '';
        switch (value.toInt()) {
          case 0:
            text = '0hr';
            break;
          case 5:
            text = '5hr';
            break;
          case 10:
            text = '10hr';
            break;
          case 15:
            text = '15hr';
            break;
          case 20:
            text = '20hr';
            break;
          case 24:
            text = '24hr';
            break;
        }

        return Text(text);
      },
    );
