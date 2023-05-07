import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(Alerts());
}

class Alerts extends StatefulWidget {
  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  // Initialize the Flutter Local Notifications plugin
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();
  @override
  Future<void> showNotification() async {
    // Set up the notification details
    const AndroidNotificationDetails androidDetails =
    AndroidNotificationDetails(
      'channel_id',
      'channel_name',
      importance: Importance.high,
      priority: Priority.high,
    );
    // const IOSNotificationDetails iOSDetails = IOSNotificationDetails();
    const NotificationDetails notificationDetails =
    NotificationDetails(android: androidDetails);

    // Display the notification
    await flutterLocalNotificationsPlugin.show(
      0,
      'Weather Alert',
      'Snow Today',
      notificationDetails,
      payload: 'weather_alert',
    );
  }

  Timer? _timer;
  String? location_key = "";
  String? alert = "";

  Future<void> _fetchWeatherAlert() async {
    // final apiKey = '8e88f1a28cd58fba379418973d8d561d';
    final response = await http.get(
      Uri.parse(
          'http://dataservice.accuweather.com/locations/v1/cities/autocomplete?apikey=AlPj0t6rLewU3SmL1lrkQW6SbnR8mpTr&q=russia'),
    );
    final responseData = json.decode(response.body);
    setState(() {
      location_key = responseData[0]['Key'];
    });
    final response_1 = await http.get(
      Uri.parse(
          'http://dataservice.accuweather.com/alarms/v1/5day/$location_key?apikey=AlPj0t6rLewU3SmL1lrkQW6SbnR8mpTr'),
    );
    final responseData_1 = json.decode(response_1.body);
    setState(() {
      alert = responseData_1[0]['Alarms'][0]['AlarmType'];
    });
    @override
    void initState() {
      super.initState();

      // Start the timer to check the temperature every 5 seconds
      _timer = Timer.periodic(Duration(seconds: 5), (timer) {
        if (alert?.isEmpty ?? false) {
          showNotification();
        }
      });
    }

    @override
    void dispose() {
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
