import 'package:flutter/material.dart';

class MetricPage extends StatefulWidget {
  final Function(bool?) convertTemperature;

  MetricPage({required this.convertTemperature});

  @override
  _MetricPageState createState() => _MetricPageState();
}

class _MetricPageState extends State<MetricPage> {
  bool _isCelsius = true;

  void _handleMetricChange(bool? value) {
    setState(() {
      _isCelsius = value ?? true;
    });
    widget.convertTemperature(_isCelsius);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Metric Page'),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Theme(
        data: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(
            color: Colors.grey[800]
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
            primary: Colors.grey[800],
            onPrimary: Colors.white,
          ))

          ),
          
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Select a unit:',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: Text('Celsius'),
              leading: Radio(
                value: true,
                groupValue: _isCelsius,
                onChanged: _handleMetricChange,
              ),
            ),
            ListTile(
              title: Text('Fahrenheit'),
              leading: Radio(
                value: false,
                groupValue: _isCelsius,
                onChanged: _handleMetricChange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
