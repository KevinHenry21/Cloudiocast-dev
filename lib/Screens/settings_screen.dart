import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Settings", style: TextStyle(fontSize: 22)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Container(
        margin: new EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "General",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10.0,
            ),
            buildMenuItem(
                text: 'Unit system', icon: Icons.keyboard_alt_outlined),
            SizedBox(
              height: 04.0,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Interface",
              style: TextStyle(fontSize: 20),
            ),
            buildMenuItem(text: 'Theme', icon: CupertinoIcons.moon_fill),
            buildMenuItem(text: 'Default Theme', icon: CupertinoIcons.moon),
            SizedBox(
              height: 05.0,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 10.0,
            ),
            buildMenuItem(text: 'Country', icon: CupertinoIcons.location_solid),
            buildMenuItem(text: 'Cities', icon: CupertinoIcons.building_2_fill),
            buildMenuItem(
                text: 'Learn More', icon: CupertinoIcons.doc_text_search),
            SizedBox(
              height: 05.0,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "About",
              style: TextStyle(fontSize: 20),
            ),
            buildMenuItem(text: 'About Climate', icon: CupertinoIcons.info),
            SizedBox(
              height: 05.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
