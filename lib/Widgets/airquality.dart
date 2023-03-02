import 'package:demo_run/utils/Services/weather.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:percent_indicator/circular_percent_indicator.dart';

class AQIPage extends StatefulWidget {
  const AQIPage({Key? key}) : super(key: key);

  @override
  _AQIPageState createState() => _AQIPageState();
}

class _AQIPageState extends State<AQIPage> {
  int _aqi = 0;
  double? ozone;
  WeatherModel weather = WeatherModel();
  String? _aqiMessage;
  Future<void> _fetchAQIData()  async {
    // final apiKey = '8e88f1a28cd58fba379418973d8d561d';
    final response =  await http.get(
      Uri.parse('https://api.openweathermap.org/data/2.5/air_pollution?lat=12&lon=77&appid=8e88f1a28cd58fba379418973d8d561d'),
    );
    final responseData = json.decode(response.body);
    setState(() {
      _aqi = responseData['list'][0]['main']['aqi'];
      ozone = responseData['list'][0]['components']['o3'];
      _aqiMessage = weather.aqiMessage(_aqi);
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchAQIData();
  }

  @override
  Widget build(BuildContext context){
    return Container(

      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),

      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16),
        decoration: BoxDecoration(
            color: Theme.of(context).selectedRowColor,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
                CircularPercentIndicator(
              radius: 60,
                  lineWidth: 5,
                  percent: _aqi / 6,
                  progressColor: Colors.blueGrey,
                  center: Text(
                      '$_aqi',
                      style: TextStyle(
                          fontSize: 24
                      ),
                  ),
          ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Air Quality',
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '$_aqiMessage',
                        style: const TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      Text(
                        'Ozone: $ozone',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
          ),
        ),
      ),

    );
  }
}
