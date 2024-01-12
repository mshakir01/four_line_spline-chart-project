
import 'package:custom_bottom/two_line_chart_screen.dart';
import 'package:flutter/material.dart';

import 'four_line_chart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Multiple Spline Graphs'),
        ),
        body: Center(
          child: FourlineChartScreen(),
        ),
      ),
    );
  }
}

