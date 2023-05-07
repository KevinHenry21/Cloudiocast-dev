import 'package:flutter/material.dart';
import 'package:demo_run/model/weather_data_current.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../controller/global_controller.dart';

class WeatherDetails extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  final GlobalController globalController =
  Get.put(GlobalController(), permanent: true);

  WeatherDetails({Key? key, required this.weatherDataCurrent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: WeatherDeatilsList(
                      weatherParameter: weatherDataCurrent.current.feelsLike!,
                      timeStamp: weatherDataCurrent.current.sunrise!,
                      icon: "sunrise",
                      text: 'Sunrise',
                    ),
                ),
                Expanded(
                    child: WeatherDeatilsList(
                      weatherParameter: weatherDataCurrent.current.feelsLike!,
                      timeStamp: weatherDataCurrent.current.sunset!,
                      icon: "sunset",
                      text: 'Sunset',
                    ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: WeatherDeatilsList1(
                        weatherParameter: '${weatherDataCurrent.current.feelsLike!.toString()} °C',
                        icon: "feelslike",
                        text: 'Feels like'
                    ),
                ),
                Expanded(
                    child: WeatherDeatilsList1(
                        weatherParameter: '${(weatherDataCurrent.current.visibility!/1000).toString()} km',
                        icon: "visibility",
                        text: 'Visibility'
                    )
                ),
              ],
            )
          ],
        ));
  }
}

class WeatherDeatilsList extends StatelessWidget {
  int weatherParameter;
  int timeStamp;
  String icon;
  String text;

  String getTime(final timeStamp) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);
    String x = DateFormat('jm').format(time);
    return x;
  }

  WeatherDeatilsList(
      {Key? key,
      required this.weatherParameter,
      required this.timeStamp,
      required this.icon,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 20.0),
      // padding: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      width: MediaQuery.of(context).size.width*0.4-MediaQuery.of(context).padding.horizontal,
      // height: MediaQuery.of(context).size.height*0.12,
      // color: Color(0x81232E34),
      decoration: BoxDecoration(
          color: Theme.of(context).selectedRowColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/weather/$icon.png",
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text('$text')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            getTime(timeStamp),
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

class WeatherDeatilsList1 extends StatelessWidget {
  String weatherParameter;
  String icon;
  String text;

  WeatherDeatilsList1(
      {Key? key,
      required this.weatherParameter,
      required this.icon,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width*0.36,
      // height: MediaQuery.of(context).size.height*0.12,
      // color: Color(0x81232E34),
      decoration: BoxDecoration(
          color: Theme.of(context).selectedRowColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/weather/$icon.png",
                width: 30,
                height: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(text)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '$weatherParameter',
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}
