import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String image;
  double height1;
  double width1;

  NewsCard(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.width1,
      required this.height1,
      required this.image})
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              text1,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
