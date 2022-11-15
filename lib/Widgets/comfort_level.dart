import 'package:demo_run/model/weather_data_current.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ComfortLevel extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const ComfortLevel({Key? key, required this.weatherDataCurrent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.all(20.0),
      // color: Color(0x81232E34),
      decoration: BoxDecoration(
          color: Theme.of(context).selectedRowColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            margin: EdgeInsets.only(top: 1, left: 20, right: 20, bottom: 20),
            child: const Text(
              "Comfort Level",
              style: TextStyle(
                fontSize: 18
              ),
            ),
          ),
          SizedBox(
            height: 150,
            child: Column(
              children: [
                Center(

                  child: SleekCircularSlider(
                    min: 0,
                    max: 100,

                    initialValue: weatherDataCurrent.current.humidity!.toDouble(),
                    appearance: CircularSliderAppearance(
                      animationEnabled: true, size: 140,
                      customColors: CustomSliderColors(
                        hideShadow: true,
                        progressBarColors: [
                          Color(0xFF43779C),
                          Color(0xFFCD8EFC)
                        ],
                        trackColor: Theme.of(context).selectedRowColor,
                      ),infoProperties: InfoProperties(
                      mainLabelStyle: TextStyle(
                          color: Theme.of(context).secondaryHeaderColor,
                          fontSize: 24),
                      bottomLabelText: "Humidity",
                      bottomLabelStyle: const TextStyle(
                        letterSpacing: 0.1,
                        fontSize: 14,
                        height: 1.5
                      )
                    )
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
