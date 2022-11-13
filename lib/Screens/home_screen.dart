import 'package:demo_run/Widgets/header.dart';
import 'package:demo_run/Widgets/weeklyinfo.dart';
import 'package:demo_run/config/theme_services.dart';
import 'package:demo_run/Widgets/weather_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
                          margin: const EdgeInsets.only(top: 20, left: 10.0),
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Today',
                                    style: TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  Text(
                                    date,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SingleChildScrollView(
                                padding: const EdgeInsets.only(top: 10.0),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    WeatherCard(
                                      text1: '11AM',
                                      icon: Icons.cloud_queue_sharp,
                                      height1: 120,
                                      width1: 100,
                                      text2: '24°C',
                                      color: Color(0x81232E34),
                                    ),
                                    WeatherCard(
                                      text1: '12PM',
                                      icon: Icons.cloud_queue_sharp,
                                      height1: 120,
                                      width1: 100,
                                      text2: '24°C',
                                      color: Color.fromARGB(255, 63, 77, 90),
                                    ),
                                    WeatherCard(
                                      text1: '1AM',
                                      icon: Icons.cloud_queue_sharp,
                                      height1: 120,
                                      width1: 100,
                                      text2: '24°C',
                                      color: Color(0x81232E34),
                                    ),
                                    WeatherCard(
                                      text1: '2AM',
                                      icon: Icons.cloud_queue_sharp,
                                      height1: 120,
                                      width1: 100,
                                      text2: '24°C',
                                      color: Color(0x81232E34),
                                    ),
                                    WeatherCard(
                                      text1: '3AM',
                                      icon: Icons.cloud_queue_sharp,
                                      height1: 120,
                                      width1: 100,
                                      text2: '24°C',
                                      color: Color(0x81232E34),
                                    ),
                                    WeatherCard(
                                      text1: '4AM',
                                      icon: Icons.cloud_queue_sharp,
                                      height1: 120,
                                      width1: 100,
                                      text2: '24°C',
                                      color: Color(0x81232E34),
                                    ),
                                    WeatherCard(
                                      text1: '5AM',
                                      icon: Icons.cloud_queue_sharp,
                                      height1: 120,
                                      width1: 100,
                                      text2: '24°C',
                                      color: Color(0x81232E34),
                                    ),
                                    WeatherCard(
                                      text1: '6AM',
                                      icon: Icons.cloud_queue_sharp,
                                      height1: 120,
                                      width1: 100,
                                      text2: '24°C',
                                      color: Color(0x81232E34),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Card(
                          color: Color(0x81232E34),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(24.0),
                            child: Column(
                              children: const [
                                WeeklyInfo(
                                    text1: 'Monday',
                                    text2: '24°C',
                                    icon: Icons.cloud_queue_sharp),
                                SizedBox(
                                  height: 18,
                                ),
                                WeeklyInfo(
                                    text1: 'Tuesday',
                                    text2: '24°C',
                                    icon: Icons.cloud_queue_sharp),
                                SizedBox(
                                  height: 18,
                                ),
                                WeeklyInfo(
                                    text1: 'Wednesday',
                                    text2: '24°C',
                                    icon: Icons.cloud_queue_sharp),
                                SizedBox(
                                  height: 18,
                                ),
                                WeeklyInfo(
                                    text1: 'Thursday',
                                    text2: '24°C',
                                    icon: Icons.cloud_queue_sharp),
                                SizedBox(
                                  height: 18,
                                ),
                                WeeklyInfo(
                                    text1: 'Friday',
                                    text2: '24°C',
                                    icon: Icons.cloud_queue_sharp),
                                SizedBox(
                                  height: 18,
                                ),
                                WeeklyInfo(
                                    text1: 'Saturday',
                                    text2: '24°C',
                                    icon: Icons.cloud_queue_sharp),
                                SizedBox(
                                  height: 18,
                                ),
                                WeeklyInfo(
                                    text1: 'Sunday',
                                    text2: '24°C',
                                    icon: Icons.cloud_queue_sharp),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
              ),
      ),
    ));
  }
}
