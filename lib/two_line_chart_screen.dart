
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class  TwoLineChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: MyChart(),
      ),
    );
  }
}

class MyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SfCartesianChart(
        title: ChartTitle(text: 'Multiple Spline Graphs'),
        legend: Legend(isVisible: true),
        primaryXAxis: CategoryAxis(),
        series: [
          SplineSeries<SalesData, String>(
            name: 'Series 1',
            dataSource: <SalesData>[
              SalesData('Jan', 35),
              SalesData('Feb', 28),
              SalesData('Mar', 34),
              SalesData('Apr', 32),
              SalesData('May', 40),
            ],
            xValueMapper: (SalesData sales, _) => sales.month,
            yValueMapper: (SalesData sales, _) => sales.sales,
          ),
          SplineSeries<SalesData, String>(
            name: 'Series 2',
            dataSource: <SalesData>[
              SalesData('Jan', 20),
              SalesData('Feb', 32),
              SalesData('Mar', 18),
              SalesData('Apr', 24),
              SalesData('May', 30),
            ],
            xValueMapper: (SalesData sales, _) => sales.month,
            yValueMapper: (SalesData sales, _) => sales.sales,
          ),
          // Add more SplineSeries as needed
        ],
      ),
    );
  }
}

class SalesData {
  final String month;
  final double sales;

  SalesData(this.month, this.sales);
}


