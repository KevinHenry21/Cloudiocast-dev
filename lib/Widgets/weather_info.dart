import 'package:demo_run/model/weather_data_current.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CurrentWeather extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  CurrentWeather({Key? key, required this.weatherDataCurrent}) : super(key: key);

  String date = DateFormat("yMMMMd").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Center(
          child: Text(
            'Sunny',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            '${weatherDataCurrent.current.temp?.ceil()}°C',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    fontSize: 72,
                    color: Colors.white,
                    fontWeight: FontWeight.w500)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  date,
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            )),
        const SizedBox(
          height: 140,
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.all(10.0),
          child: Card(
            // color: Colors.black54,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.water_drop, color: Colors.white),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${weatherDataCurrent.current.humidity}%',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.wind_power, color: Colors.white),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${weatherDataCurrent.current.windSpeed}km/h',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.energy_savings_leaf,
                          color: Colors.white),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${weatherDataCurrent.current.weather![0].description}',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children:  [
                      Icon(Icons.sunny, color: Colors.white),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${weatherDataCurrent.current.uvi}',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
