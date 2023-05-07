import 'package:demo_run/Screens/worldClock.dart';
import 'package:demo_run/Widgets/Notification_settings.dart';
import 'package:demo_run/utils/Services/notification_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import '../controller/global_controller.dart';

DateTime scheduleTime = DateTime.now();

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
  void notify(){
    notificationServices.sendNotification(
        'Weather daily updates',
        'You\'ll be notified about the weather changes in order to keep you ready always.'
    );
  }

}



Settings settings = new Settings();

final GlobalController globalController =
Get.put(GlobalController(), permanent: true);
final NotificationServices notificationServices = NotificationServices();




class _SettingsState extends State<Settings> {


  @override
  void initState(){
    super.initState();
    notificationServices.initialiseNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Settings", style: TextStyle(fontSize: 22)),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Notifications",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10.0,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.notifications_none_outlined,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  TextButton(
                      onPressed: () {
                        settings.notify();
                      },
                      child: Text(
                        'Enable the notification',
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).secondaryHeaderColor
                        ),
                      )
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 8.0,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                children: [

                  Row(
                    children: [
                      const Icon(
                        Icons.schedule,
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      TextButton(
                          onPressed: () {
                            DatePicker.showDateTimePicker(
                              context,
                              showTitleActions: true,
                              minTime: DateTime.now(),
                              maxTime: DateTime.now().add(const Duration(days: 30)),
                              onChanged: (date) => scheduleTime = date,
                              onConfirm: (date) {},
                            );
                          },
                          child: Text(
                            'Select Date Time',
                            style: TextStyle(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontSize: 16,
                            ),
                          )
                      ),
                    ],
                  ),
                  NotificationSettings(
                      weatherDataCurrent: globalController
                          .getWeatherData()
                          .getCurrentWeather()),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 12.0,
            ),

            const SizedBox(
              height: 05.0,
            ),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed:(){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WorldClock()));
              },
              child: const Text(
                'World clock',
                style: TextStyle(
                  fontSize: 24
                ),
              ),

            )

          ],
        ),
      ),
    );
  }
}



