import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData icon;
  double width1;
  double height1;
  final Color color;

  WeatherCard(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.icon,
      required this.width1,
      required this.height1,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width1,
      height: height1,
      child: Card(
        color: color,
        //color: const Color.fromARGB(255, 8, 86, 130),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text1,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Icon(
              icon,
              size: 24,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text2,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
