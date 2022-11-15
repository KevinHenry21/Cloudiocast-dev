import 'package:demo_run/controller/global_controller.dart';
import 'package:demo_run/model/weather_data_hourly.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:intl/intl.dart';

class WeatherCard extends StatelessWidget {
  final WeatherDataHourly weatherDataHourly;

  WeatherCard({
    Key? key,
    required this.weatherDataHourly,
  }) : super(key: key);

  //card index
  RxInt cardIndex = GlobalController().getIndex();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          hourlyList(),
        ],
      ),
    );
  }

  Widget hourlyList() {
    return Container(
      height: 130,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: weatherDataHourly.hourly.length > 12
              ? 16
              : weatherDataHourly.hourly.length,
          itemBuilder: (context, index) {
            return Obx((() => GestureDetector(
                  onTap: () {
                    cardIndex.value = index;
                  },
                  child: Container(
                    width: 90,
                    margin: EdgeInsets.only(left: 10, right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: cardIndex.value == index
                          ?  Color(0xFF546E7A) :
                           Color(0xFF627680),
                    ),
                    child: HourlyDetails(
                      temp: weatherDataHourly.hourly[index].temp!,
                      timeStamp: weatherDataHourly.hourly[index].dt!,
                      weatherIcon:
                          weatherDataHourly.hourly[index].weather![0].icon!,
                      index: index,
                      cardIndex: cardIndex.toInt(),
                    ),
                  ),
                )));
          }),
    );
  }
}

class HourlyDetails extends StatelessWidget {
  int temp;
  int timeStamp;
  int index;
  int cardIndex;
  String weatherIcon;

  String getTime(final timeStamp) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);
    String x = DateFormat('jm').format(time);
    return x;
  }

  HourlyDetails({
    Key? key,
    required this.index,
    required this.cardIndex,
    required this.temp,
    required this.timeStamp,
    required this.weatherIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            getTime(timeStamp),
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        Container(
          child: Image.asset(
            "assets/weather/$weatherIcon.png",
            height: 40,
            width: 40,
          ),
        ),
        Container(
          child: Text(
              '$temp°C',
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
      ],
    );
  }
}
