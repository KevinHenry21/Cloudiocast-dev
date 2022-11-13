import 'package:demo_run/Widgets/weather_info.dart';
import 'package:demo_run/model/weather_data_current.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../config/theme_services.dart';
import '../controller/global_controller.dart';
import 'package:demo_run/model/weather_data_current.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  String city = "";
  String country = "";

  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  void initState() {
    getAddress(globalController.getLattitude().value,
        globalController.getLongitude().value);
    super.initState();
  }

  getAddress(lat, lon) async {
    List<Placemark> placemark = await placemarkFromCoordinates(lat, lon);
    Placemark place = placemark[0];
    setState(() {
      city = place.locality!;
      country = place.country!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipPath(
        clipper: ClipPathClass(),
        child: Image.asset(
          "assets/Images/wallpaper10.png",
          width: double.infinity,
          height: 550,
          fit: BoxFit.cover,
        ),
      ),
      Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(Icons.search_sharp,
                          size: 32, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFF3D5D84),
                        blurRadius: 15,
                        spreadRadius: 1,
                        offset: Offset(4, 2),
                      ),
                      BoxShadow(
                        color: Colors.blueGrey,
                        blurRadius: 15,
                        spreadRadius: 1,
                        offset: Offset(-4, -4),
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () {
                      ThemeService().switchTheme();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.nightlight_round_sharp,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on_outlined, color: Colors.white
                          // color: Color(0xFF1A98B6),
                          ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        city + ",  " + country,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CurrentWeather(weatherDataCurrent: globalController.getWeatherData().getCurrentWeather(),),
                ],
              ),
            )
          ],
        ),
      )

    ]);
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
