import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchhistory extends StatelessWidget {
  final String countrytext;
  final String temptext;
  final IconData icon;

  Searchhistory(
      {Key? key,
      required this.countrytext,
      required this.temptext,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                countrytext,
                textAlign: TextAlign.left,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Row(
                children: [
                  Text(
                    temptext,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
