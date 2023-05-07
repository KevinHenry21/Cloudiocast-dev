import 'dart:convert';
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
import '../model/weather_data.dart';
import 'Newsfeed.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String date = DateFormat("yMMMMd").format(DateTime.now());
  final GlobalController globalController =
  Get.put(GlobalController(), permanent: true);
  WeatherData? weatherData;
  Settings settings = const Settings();

  String apiKey = "3302e1435edd8695430126ad85ea87bf";
  String temp = "";
  String description = "";
  String cityName = "";
  String tomtemp = "";
  String tomdescription = "";
  String temp2 = "";
  String description2 = "";
  String temp3 = "";
  String description3 = "";
  String temp4 = "";
  String description4 = "";
  String temp5 = "";
  String description5 = "";
  String temp6 = "";
  String description6 = "";
  int day1 = 0;
  int day2 = 0;
  int day3 = 0;
  int day4 = 0;
  int day5 = 0;
  int day6 = 0;
  int day7 = 0;


  // Accessing the value of temperature
  void _callProjectApi() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({"temp":globalController.getWeatherData().getCurrentWeather().current.temp?.ceil()});
    AlanVoice.callProjectApi("script::temperature", params);
  }

  // Accessing the value of temperature and weather description
  void _weather() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "temp":globalController.getWeatherData().getCurrentWeather().current.temp?.ceil(),
      "desc":globalController.getWeatherData().getCurrentWeather().current.weather![0].description,
    });
    AlanVoice.callProjectApi("script::weatherDetail", params);
  }

  // Accessing the value of humidity
  void _humidity() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "humidity":globalController.getWeatherData().getCurrentWeather().current.humidity
    });
    AlanVoice.callProjectApi("script::humidity", params);
  }

  // Accessing the value of wind
  void _wind() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "wind":globalController.getWeatherData().getCurrentWeather().current.windSpeed
    });
    AlanVoice.callProjectApi("script::wind", params);
  }

  // Accessing the value of UV
  void _uv() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "uv":globalController.getWeatherData().getCurrentWeather().current.uvi
    });
    AlanVoice.callProjectApi("script::uv", params);
  }

  void _tomorrow() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "temp":globalController.getWeatherData().getDailyWeather().daily[1].temp!.max,
      "desc":globalController.getWeatherData().getDailyWeather().daily[1].weather![0].description
    });
    AlanVoice.callProjectApi("script::tomorrow", params);
  }

  void _tomtempNigh() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "temp":globalController.getWeatherData().getDailyWeather().daily[1].temp!.night?.ceil(),
    });
    AlanVoice.callProjectApi("script::tomtempNigh", params);
  }

  //------------------------------------------------------------------------------------------------------------------

  void _tomtempMorn() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "temp":globalController.getWeatherData().getDailyWeather().daily[1].temp!.morn?.ceil(),
    });
    AlanVoice.callProjectApi("script::tomtempMorn", params);
  }

  void _tomhumidity() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "tomHumidity":globalController.getWeatherData().getDailyWeather().daily[1].humidity,
    });
    AlanVoice.callProjectApi("script::tomhumidity", params);
  }

  void _daytomhumidity() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "daytomHumidity":globalController.getWeatherData().getDailyWeather().daily[2].humidity,
    });
    AlanVoice.callProjectApi("script::daytomhumidity", params);
  }

  void _tomuv() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "tomUv":globalController.getWeatherData().getDailyWeather().daily[1].uvi,
    });
    AlanVoice.callProjectApi("script::tomuv", params);
  }

  void _daytomuv() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "daytomUv":globalController.getWeatherData().getDailyWeather().daily[2].uvi,
    });
    AlanVoice.callProjectApi("script::daytomuv", params);
  }

  void _tomtempEve() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "temp":globalController.getWeatherData().getDailyWeather().daily[1].temp!.eve?.ceil(),
    });
    AlanVoice.callProjectApi("script::tomtempEve", params);
  }

  void _daytomwind() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "daytomWind":globalController.getWeatherData().getDailyWeather().daily[2].windSpeed,
    });
    AlanVoice.callProjectApi("script::daytomwind", params);
  }

  void _tomwind() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "tomWind":globalController.getWeatherData().getDailyWeather().daily[1].windSpeed,
    });
    AlanVoice.callProjectApi("script::tomwind", params);
  }

  void feels() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "feels":globalController.getWeatherData().getCurrentWeather().current.feelsLike?.ceil(),
    });
    AlanVoice.callProjectApi("script::feels", params);
  }

  void visibility() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "visibility":globalController.getWeatherData().getCurrentWeather().current.visibility,
    });
    AlanVoice.callProjectApi("script::visibility", params);
  }

  String getTime(final timeStamp){
    DateTime time = DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);
    String x = DateFormat('jm').format(time);
    return x;
  }

  void _sunrise() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "sunrise":getTime(globalController.getWeatherData().getCurrentWeather().current.sunrise),
    });
    AlanVoice.callProjectApi("script::sunrise", params);
  }

  void _sunset() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "sunset":getTime(globalController.getWeatherData().getCurrentWeather().current.sunset),
    });
    AlanVoice.callProjectApi("script::sunset", params);
  }

  void _tomsunrise() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "tomSunrise":getTime(globalController.getWeatherData().getDailyWeather().daily[1].sunrise),
    });
    AlanVoice.callProjectApi("script::tomsunrise", params);
  }

  void _tomsunset() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "tomSunset":getTime(globalController.getWeatherData().getDailyWeather().daily[1].sunset),
    });
    AlanVoice.callProjectApi("script::tomsunset", params);
  }

  void _daytomsunrise() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "daytomSunrise":getTime(globalController.getWeatherData().getDailyWeather().daily[2].sunrise),
    });
    AlanVoice.callProjectApi("script::daytomsunrise", params);
  }

  void _daytomsunset() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "daytomSunset":getTime(globalController.getWeatherData().getDailyWeather().daily[2].sunset),
    });
    AlanVoice.callProjectApi("script::daytomsunset", params);
  }

  void getDailyWeatherData(String city, String command) async {

    var url =
        'https://pro.openweathermap.org/data/2.5/forecast/daily?q=$city&cnt=7&APPID=$apiKey&units=metric';
    var response = await http.get(Uri.parse(url));
    var result = jsonDecode(response.body);
    setState(() {

      temp = result['list'][0]['temp']['day'].toString();
      description = result['list'][0]['weather'][0]['description'];
      day1 = result['list'][0]['dt'];

      tomtemp = result['list'][1]['temp']['day'].toString();
      tomdescription = result['list'][1]['weather'][0]['description'];
      day2 = result['list'][1]['dt'];

      temp2 = result['list'][2]['temp']['day'].toString();
      description2 = result['list'][2]['weather'][0]['description'];
      day3 = result['list'][2]['dt'];

      temp3 = result['list'][3]['temp']['day'].toString();
      description3 = result['list'][3]['weather'][0]['description'];
      day4 = result['list'][3]['dt'];

      temp4 = result['list'][4]['temp']['day'].toString();
      description4 = result['list'][4]['weather'][0]['description'];
      day5 = result['list'][4]['dt'];

      temp5 = result['list'][5]['temp']['day'].toString();
      description5 = result['list'][5]['weather'][0]['description'];
      day6 = result['list'][5]['dt'];

      temp6 = result['list'][6]['temp']['day'].toString();
      description6 = result['list'][6]['weather'][0]['description'];
      day7 = result['list'][6]['dt'];

      if (command == 'getWeather') {
        _cityData();
      }
      else if (command == 'getTomWeather') {
        _TomcityData();
      }
      else if (command == 'getWeekWeather') {
        _WeekcityData();
      }

    });
  }

  void _cityData() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "tempCity": temp,
      "descriptionCity": description,
    });
    AlanVoice.callProjectApi("script::getWeather", params);
  }

  void _TomcityData() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "TomtempCity":tomtemp,
      "TomdescriptionCity": tomdescription,
    });
    AlanVoice.callProjectApi("script::getTomWeather", params);
  }

  String getDaily(final day) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(day * 1000);
    final x = DateFormat('EEEE').format(time);
    return x;
  }

  void _WeekcityData() {
    /// Providing any params with json
    AlanVoice.activate();
    var params = jsonEncode({
      "tempCity1":temp,
      "descriptionCity1": description,
      "day1": getDaily(day1),
      "tempCity2":tomtemp,
      "descriptionCity2": tomdescription,
      "day2": getDaily(day2),
      "tempCity3":temp2,
      "descriptionCity3": description2,
      "day3": getDaily(day3),
      "tempCity4":temp3,
      "descriptionCity4": description3,
      "day4": getDaily(day4),
      "tempCity5":temp4,
      "descriptionCity5": description4,
      "day5": getDaily(day5),
      "tempCity6":temp5,
      "descriptionCity6": description5,
      "day6": getDaily(day6),
      "tempCity7":temp6,
      "descriptionCity7": description6,
      "day7": getDaily(day7),
    });
    AlanVoice.callProjectApi("script::getWeekWeather", params);
  }

  //-------------------------------------------------------------------------------------------------------------------

  _HomeScreenState(){
    AlanVoice.addButton(
      "5092de3903793f927daf5c30d041c0f82e956eca572e1d8b807a3e2338fdd0dc/stage",
    );
    /// Handle commands from Alan Studio
    AlanVoice.onCommand.add((command) => _handleCommand(command.data));

    AlanVoice.onCommand.add((command) {
      debugPrint("got new command ${command.toString()}");

      getDailyWeatherData(command.data['city'], command.data['command']);
    });
  }

  @override
  void initState() {
    super.initState();
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

      case "temp":
        _callProjectApi();
        break;

      case "weather":
        _weather();
        break;

      case "humidity":
        _humidity();
        break;

      case "wind":
        _wind();
        break;

      case "uv":
        _uv();
        break;

      case "tomorrow":
        _tomorrow();
        break;

      case "tomtempNigh":
        _tomtempNigh();
        break;

      case "tomtempMorn":
        _tomtempMorn();
        break;

      case "tomtempEve":
        _tomtempEve();
        break;

      case "sunrise":
        _sunrise();
        break;

      case "sunset":
        _sunset();
        break;

      case "tomsunrise":
        _tomsunrise();
        break;

      case "tomsunset":
        _tomsunset();
        break;

      case "daytomsunrise":
        _daytomsunrise();
        break;

      case "daytomsunset":
        _daytomsunset();
        break;

      case "daytomhumidty":
        _daytomhumidity();
        break;

      case "tomhumidity":
        _tomhumidity();
        break;

      case "daytomuv":
        _daytomuv();
        break;

      case "tomuv":
        _tomuv();
        break;

      case "daytomwind":
        _daytomwind();
        break;

      case "tomwind":
        _tomwind();
        break;

      // case "getWeather":
      //   _cityData();
      //   break;
      //
      // case "getTomWeather":
      //   _TomcityData();
      //   break;
      //
      // case "getWeekWeather":
      //   _WeekcityData();
      //   break;

      // case "getWeather":
      //   getDailyWeatherData(command["city"]);
      //   break;

      default:
        debugPrint("Unknown command");
    }
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
                    // const PollenData(),
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