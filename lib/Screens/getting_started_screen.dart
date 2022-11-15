import 'package:demo_run/Widgets/animated_bottombar.dart';
import 'package:demo_run/Widgets/animation_slide_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() {
    return _GetStartedScreenState();
  }
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: GestureDetector(
        onVerticalDragStart: (dragUpdateDetails) {
          Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.bottomToTop,
                child: AnimatedBottomNavbar(),
                isIos: true,
                duration: Duration(milliseconds: 200),
                reverseDuration: Duration(milliseconds: 900),
              ));
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
                        height: 40,
                      ),
                      Text(
                        'Cloudiocast',
                        style: GoogleFonts.cinzel(
                            textStyle: const TextStyle(
                          fontSize: 45,
                              color: Colors.white
                        )),
                      ),
                      Text(
                        'Bringing weather to life !',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 18,
                                color: Colors.white
                            )),
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
