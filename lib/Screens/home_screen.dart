import 'package:demo_run/Screens/ar_camera.dart';
import 'package:demo_run/Screens/settings_screen.dart';
import 'package:demo_run/Widgets/PollenData.dart';
import 'package:demo_run/Widgets/comfort_level.dart';
import 'package:demo_run/Widgets/header.dart';
import 'package:demo_run/Widgets/weatherDetails.dart';
import 'package:demo_run/Widgets/weeklyinfo.dart';
import 'package:demo_run/Widgets/weather_hourly_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:alan_voice/alan_voice.dart';
import '../Widgets/airquality.dart';
import '../controller/global_controller.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'Newsfeed.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Settings settings = const Settings();
  @override
  void initState() {
    super.initState();
    AlanVoice.addButton(
      "5092de3903793f927daf5c30d041c0f82e956eca572e1d8b807a3e2338fdd0dc/stage",
    );

    /// Handle commands from Alan Studio
    AlanVoice.onCommand.add((command) => _handleCommand(command.data));
  }

  void _handleCommand(Map<String, dynamic> command) {
    switch (command["command"]) {
      case "AR":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ArCamera()));
        break;

      case "home":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HomeScreen()));
        break;

      case "setting":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Settings()));
        break;

      case "back":
        Navigator.pop(context);
        break;

      case "notify":
        settings.notify();
        break;

      default:
        debugPrint("Unknown command");
    }
  }

  String date = DateFormat("yMMMMd").format(DateTime.now());
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Obx(
        () => globalController.checkLoading().isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeaderWidget(),
                      Container(
                          margin: const EdgeInsets.only(top: 20, left: 20.0),
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Today',
                                    style: TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  Text(
                                    date,
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              WeatherCard(
                                weatherDataHourly: globalController
                                    .getWeatherData()
                                    .getHourlyWeather(),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      WeeklyInfo(
                          weatherDataDaily: globalController
                              .getWeatherData()
                              .getDailyWeather()),
                      const SizedBox(
                        height: 10,
                      ),
                      ComfortLevel(
                        weatherDataCurrent: globalController
                            .getWeatherData()
                            .getCurrentWeather(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      WeatherDetails(
                        weatherDataCurrent: globalController
                            .getWeatherData()
                            .getCurrentWeather(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const AQIPage(),
                      const SizedBox(
                        height: 10,
                      ),
                      const PollenData(),
                      const SizedBox(
                        height: 20,
                      ),

                       const Padding(
                         padding: EdgeInsets.only(left: 20.0),
                         child: Text(
                          'Latest News',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                      ),
                       ),

                      const Newsfeed(),
                    ],
                  ),
                ),
              ),
      ),
    ));
  }
}