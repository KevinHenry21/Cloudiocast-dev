import 'package:demo_run/Widgets/comfort_level.dart';
import 'package:demo_run/Widgets/header.dart';
import 'package:demo_run/Widgets/weatherDetails.dart';
import 'package:demo_run/Widgets/weeklyinfo.dart';
import 'package:demo_run/Widgets/weather_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controller/global_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String date = DateFormat("yMMMMd").format(DateTime.now());

  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  void initState() {
    super.initState();
  }

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
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      HeaderWidget(),
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
                      SizedBox(
                        height: 10,
                      ),
                      ComfortLevel(
                          weatherDataCurrent: globalController.getWeatherData().getCurrentWeather(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      WeatherDetails(
                          weatherDataCurrent: globalController.getWeatherData().getCurrentWeather(),
                      )
                    ],
                  ),
                ),
              ),
      ),
    ));
  }
}

