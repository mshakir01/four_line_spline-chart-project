
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class FourlineChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: 300,
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
          SplineSeries<SalesData, String>(
            name: 'Series 3',
            dataSource: <SalesData>[
              SalesData('Jan', 10),
              SalesData('Feb', 18),
              SalesData('Mar', 25),
              SalesData('Apr', 15),
              SalesData('May', 20),
            ],
            xValueMapper: (SalesData sales, _) => sales.month,
            yValueMapper: (SalesData sales, _) => sales.sales,
          ),
          SplineSeries<SalesData, String>(
            name: 'Series 4',
            dataSource: <SalesData>[
              SalesData('Jan', 30),
              SalesData('Feb', 22),
              SalesData('Mar', 28),
              SalesData('Apr', 35),
              SalesData('May', 32),
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
