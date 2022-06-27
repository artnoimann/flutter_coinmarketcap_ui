import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

LineChartWidget(bool colorLine) {
  Color colorsLine = colorLine ? Colors.red.shade300 : Colors.green;
  List<Color> listColor = [colorsLine, Colors.white];

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff72719b),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('5:10');
        break;
      case 2:
        text = const Text('5:15');
        break;
      case 3:
        text = const Text('5:20');
        break;
      case 4:
        text = const Text('5:25');
        break;
      case 5:
        text = const Text('5:30');
        break;
      case 6:
        text = const Text('5:35');
        break;
      case 7:
        text = const Text('5:40');
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

    List<FlSpot> listSpots = [
      const FlSpot(1, 1),
      const FlSpot(2, 3),
      const FlSpot(3, 2.8),
      const FlSpot(4, 3.5),
      const FlSpot(5, 2),
      const FlSpot(6, 3.9),
      const FlSpot(7, 2.5),
      const FlSpot(8, 1.4),
      const FlSpot(9, 3),
      const FlSpot(10, 2.8),
      const FlSpot(11, 3.5),
      const FlSpot(12, 2.6),
      const FlSpot(13, 3),
      const FlSpot(14, 2.8),
      const FlSpot(15, 3.5),
      const FlSpot(16, 2),
      const FlSpot(21, 3),
      const FlSpot(22, 2.8),
      const FlSpot(23, 3.5),
      const FlSpot(24, 2.6),
      const FlSpot(25, 3),
    ];

  return LineChart(
    LineChartData(
      // minX: 0,
      // maxX: 11,
      // minY: 0,
      // maxY: 6,
      titlesData: FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
        show: false,
      ),
      gridData: FlGridData(
        show: false,
      ),
      lineBarsData: [
        LineChartBarData(
          spots: listSpots,
          isCurved: true,
          dotData: FlDotData(
            show: false,
          ),
          color: colorsLine,
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: listColor, // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
          ),
        ),
      ],
    ),
  );
}
