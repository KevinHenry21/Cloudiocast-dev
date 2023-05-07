
import '../Screens/settings_screen.dart';
import 'package:flutter/material.dart';
import '../model/weather_data_current.dart';
import '../utils/Services/notifi_service.dart';

class NotificationSettings extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const NotificationSettings({Key? key, required this.weatherDataCurrent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        debugPrint('Notification Scheduled for $scheduleTime');
        NotificationService().scheduleNotification(
            title: 'Weather Updates',
            body: 'Today\'s temperature is ${weatherDataCurrent.current.temp?.ceil()}, It is a ${weatherDataCurrent.current.weather![0].description}, Enjoy it with ice cream and have a nice day.',
            scheduledNotificationDateTime: scheduleTime
        );
      },
      child: Text(
        'Schedule Notification',
        style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).secondaryHeaderColor
        ),
      ),
    );
  }
}
