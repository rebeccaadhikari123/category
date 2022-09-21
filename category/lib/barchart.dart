import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

const kPrimaryColor = Color(0xFF981F1E);

void main() {
  return runApp(_ChartApp());
}

class _ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  _MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  @override
  void initState() {
    data = [
      _ChartData('F&D ', 3),
      _ChartData('Shop', 15),
      _ChartData('Housi', 30),
      _ChartData('Transp', 6.4),
      _ChartData('L&E', 14),
      _ChartData('Comm', 10),
      _ChartData('FE', 11),
      _ChartData('Fashi', 17),
      _ChartData('Others', 13)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expense Chart'),
        ),
        body: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(minimum: 0, maximum: 80, interval: 5),
            tooltipBehavior: _tooltip,
            series: <ChartSeries<_ChartData, String>>[
              ColumnSeries<_ChartData, String>(
                  dataSource: data,
                  xValueMapper: (_ChartData data, _) => data.x,
                  yValueMapper: (_ChartData data, _) => data.y,
                  name: 'Expense',
                  color: Color.fromARGB(255, 193, 37, 37))
            ]));
  }
}

class _ChartData {
  _ChartData(this.x, this.y);
  final String x;
  final double y;
}
