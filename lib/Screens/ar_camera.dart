import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class ArCamera extends StatefulWidget {
  @override
  _ArCameraState createState() => _ArCameraState();
}

class _ArCameraState extends State<ArCamera> {
  late UnityWidgetController _controller;
  final myController = TextEditingController();

  void fetchWeatherData(String cityName) async {

    DateTime currentmonth = DateTime.now();
    int currentMonth = currentmonth.month;

    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=8e88f1a28cd58fba379418973d8d561d&units=metric'));
    final responseData = json.decode(response.body);
    if (responseData['name'] == null ||
        responseData['sys'] == null ||
        responseData['weather'] == null ||
        responseData['main'] == null) {
      throw Exception('Failed to load weather data');
    }

    final stateResponse = await http.get(Uri.parse('https://api.opencagedata.com/geocode/v1/json?q=$cityName&key=486f650a699b4e569b770c7fab34400a'));
    final stateResponseData = json.decode(stateResponse.body);

    int temp;
    double temperature = responseData['main']['temp'];
    temp = temperature.toInt();

    final dailyResponse = await http.get(Uri.parse(
        'https://pro.openweathermap.org/data/2.5/forecast/daily?q=$cityName&cnt=7&APPID=3302e1435edd8695430126ad85ea87bf&units=metric'));
    final dailyResponseData = json.decode(dailyResponse.body);
    if (dailyResponseData['list'] == null)  {
      throw Exception('Failed to load weather data');
    }


    Map<String, dynamic> weatherData = {
      "temp": temp,
      "desc": responseData['weather'][0]['description'],
      "country": responseData['sys']['country'],
      "humidity": responseData['main']['humidity'],
      "wind_speed": responseData['wind']['speed'].ceil(),
      "city": responseData['name'],
      "state": stateResponseData['results'][1]['components']['state'],
      "icon": responseData['weather'][0]['icon'],
      "pop": dailyResponseData['list'][0]['pop']
    };

    _controller.postMessage('WeatherSimulation', '_3dModel', stateResponseData['results'][0]['components']['state']);
    _controller.postMessage('WeatherSimulation', 'OnMessageReceived', responseData['weather'][0]['main']);
    _controller.postJsonMessage('WeatherSimulation', 'FlutterText', weatherData);

    _controller.postMessage('TableTop', 'SendState1', stateResponseData['results'][0]['components']['state']);
    _controller.postMessage('TableTop', 'SendState2', stateResponseData['results'][0]['components']['state']);

  }

  void weeklyforecast(String cityName) async{
    final dailyResponse = await http.get(Uri.parse(
        'https://pro.openweathermap.org/data/2.5/forecast/daily?q=$cityName&cnt=7&APPID=3302e1435edd8695430126ad85ea87bf&units=metric'));
    final dailyResponseData = json.decode(dailyResponse.body);
    if (dailyResponseData['list'] == null)  {
      throw Exception('Failed to load weather data');
    }

      for(var i = 0 ; i < 7 ; i++){

        Map<String, dynamic> dailyForecast = {
          "temp": "${
              ((dailyResponseData['list'][i]['temp']['min'] +
                  dailyResponseData['list'][i]['temp']['max']) / 2).round()
          }",
          "day": getDaily(dailyResponseData['list'][i]['dt']),
          "icon": dailyResponseData['list'][i]['weather'][0]['icon']
        };
        _controller.postJsonMessage('Day${i+1}', 'GetDailyWeather', dailyForecast);

    }
  }

  String getDaily(final day) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(day * 1000);
    final x = DateFormat('EEE').format(time);
    return x;
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          UnityWidget(
            onUnityCreated: _onUnityViewCreated,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: myController,
                      decoration: const InputDecoration(
                        hintText: 'Search',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      fetchWeatherData(myController.text);
                      weeklyforecast(myController.text);
                    },
                    child: Text('Search'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onUnityViewCreated(UnityWidgetController controller) {
    this._controller = controller;
    fetchWeatherData("Bangalore");
    weeklyforecast("Bangalore");
  }
}