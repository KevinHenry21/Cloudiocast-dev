import 'package:intl/intl.dart';
import 'package:demo_run/model/weather_data_daily.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyInfo extends StatelessWidget {
  final WeatherDataDaily weatherDataDaily;

  const WeeklyInfo({Key? key, required this.weatherDataDaily}) : super(key: key);

  // string manipulation
  String getDaily(final day) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(day * 1000);
    final x = DateFormat('EEEE').format(time);
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
          color: Theme.of(context).selectedRowColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              "Next Days",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
          dailyList(),
        ],
      ),
    );
  }

  Widget dailyList() {
    return SizedBox(
      height: 350,
      child: ListView.builder(
          padding: const EdgeInsets.all(10.0),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: weatherDataDaily.daily.length > 7
              ? 7
              : weatherDataDaily.daily.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          getDaily(weatherDataDaily.daily[index].dt),
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset(
                                "assets/weather/${weatherDataDaily.daily[index].weather![0].icon}.png"),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                              "${weatherDataDaily.daily[index].temp!.max}° / ${weatherDataDaily.daily[index].temp!.min}°"),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
