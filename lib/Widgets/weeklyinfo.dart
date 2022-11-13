import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyInfo extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData icon;

  const WeeklyInfo(
      {Key? key, required this.text1, required this.text2, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
        ),
        Row(
          children: [
            Text(
              text2,
              style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              width: 24,
            ),
            Icon(
              icon,
              color: Colors.white,
            )
          ],
        )
      ],
    );
  }
}
