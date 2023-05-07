import 'package:flutter/material.dart';
import 'dart:math';

import 'metric.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The API value can be put in _temperature
  
  double _temperature = 60;
  String _unit = '°C';

  void _convertTemperature(bool? isCelsius) {
    setState(() {
      if (isCelsius != null && isCelsius) {
        _temperature = 60;
        _unit = '°C';
      } else {
        _temperature = (_temperature * 9 / 5) + 32;
        _unit = '°F';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Temperature: ${_temperature.toStringAsFixed(1)} $_unit',
              style: TextStyle(fontSize: 24.0),
            ),
            ElevatedButton(
              child: Text('Change Metric', ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MetricPage(
                      convertTemperature: _convertTemperature,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}