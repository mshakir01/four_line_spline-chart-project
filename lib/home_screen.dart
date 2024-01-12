// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';
//
// import 'custom_otp.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Container(
//               child: SfRadialGauge(
//                   axes: <RadialAxis>[
//                     RadialAxis(
//
//                         minimum: 0, maximum: 150,
//                          ranges: <GaugeRange>[
//                           GaugeRange(startValue: 0, endValue: 50, color:Colors.green),
//                           GaugeRange(startValue: 50,endValue: 100,color: Colors.orange),
//                           GaugeRange(startValue: 100,endValue: 150,color: Colors.red)],
//                         pointers: <GaugePointer>[
//                           NeedlePointer(value: 90)],
//                         annotations: <GaugeAnnotation>[
//
//                           ]
//                     )])
//           )));
//
//   }
// }
