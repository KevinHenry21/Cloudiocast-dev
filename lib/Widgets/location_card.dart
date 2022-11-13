import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData icon;
  final String image;
  double width1;
  double height1;

  LocationCard(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.icon,
      required this.image,
      required this.width1,
      required this.height1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: height1,
        width: width1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Images/" + image + ".jpg"),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            Row(
              children: [
                Text(
                  text2,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  icon,
                  size: 24,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
