import 'package:demo_run/Screens/home_screen.dart';
import 'package:demo_run/Widgets/animation_slide_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/bottom_navigation_bar.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState(){
    return _GetStartedScreenState();
  }
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  void initState(){
    super.initState();
  }

  Future<Position?> determinePosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        return Future.error('Location Not Available');
      }
    } else {
      throw Exception('Error');
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: GestureDetector(

        onVerticalDragStart: (dragUpdateDetails){
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.bottomToTop,
              child: BottomNav(),
              isIos: true,
              duration: Duration(milliseconds: 900),
              reverseDuration: Duration(milliseconds: 900),
            )
          );
        },

        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Images/wallpaper10.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 10.0, top: 60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'AR Weather',
                        style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                                fontSize: 30,
                            )
                        ),
                      ),
                      Text(
                        'Cloudiocast',
                        style: GoogleFonts.cinzel(
                          textStyle: const TextStyle(
                            fontSize: 45,
                          )
                      ),
                      ),
                    ],
                  ),
                ),

                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(
                        child: AnimationSlideUp(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )


              ],
            ),
          ),
        ),

      ),
    );
  }
}

