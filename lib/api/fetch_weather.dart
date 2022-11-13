import 'dart:convert';

import 'package:demo_run/api/api_key.dart';
import 'package:demo_run/model/weather_data_current.dart';
import 'package:http/http.dart' as http;

import '../model/weather_data.dart';

class FetchWeatherAPI{
  WeatherData? weatherData;

  //Processing the data from response -> to json

  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiURL(lat, lon)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(WeatherDataCurrent.fromJson(jsonString));

    return weatherData!;
  }
}

String apiURL(var lat, var lon){
  String url;

  url = "https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&exclude=minutely&appid=$apiKey&units=metric";
  return url;
}