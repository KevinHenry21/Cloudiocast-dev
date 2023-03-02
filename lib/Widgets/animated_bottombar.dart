import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:demo_run/Screens/ar_camera.dart';
import 'package:demo_run/Screens/home_screen.dart';
import 'package:demo_run/Screens/settings_screen.dart';
import 'package:demo_run/utils/Services/local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class AnimatedBottomNavbar extends StatefulWidget {
  const AnimatedBottomNavbar({Key? key}) : super(key: key);

  @override
  State<AnimatedBottomNavbar> createState() => _AnimatedBottomNavbarState();
}

class _AnimatedBottomNavbarState extends State<AnimatedBottomNavbar> {
  final _pageController = PageController(initialPage: 0);

  int maxCount = 3;

  /// widget list
  final List<Widget> bottomBarPages = [
    HomeScreen(),
    ArCamera(),
    Settings(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // LocalNotificationService.initialize(context);
    //
    // //gives you the message on which user taps
    // //and it opened the app from terminated state
    // FirebaseMessaging.instance.getInitialMessage().then((message) {
    //   if(message != null){
    //     final routeFromMessage = message.data["route"];
    //
    //     Navigator.of(context).pushNamed(routeFromMessage);
    //   }
    // });
    //
    // //Foreground
    // FirebaseMessaging.onMessage.listen((message){
    //   if(message.notification != null){
    //     print(message.notification!.body);
    //     print(message.notification!.title);
    //   }
    //
    //   LocalNotificationService.display(message);
    // });
    //
    // // When the app is in background but opened and user taps
    // // on the notification
    // FirebaseMessaging.onMessageOpenedApp.listen((message) {
    //   final routeFromMessage = message.data["route"];
    //   Navigator.of(context).pushNamed(routeFromMessage);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              pageController: _pageController,
              color: Theme.of(context).primaryColor,
              showLabel: false,
              notchColor: const Color(0xFF6893BB),
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  itemLabel: 'Home',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.camera_alt_outlined,
                  ),
                  activeItem: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                  itemLabel: 'AR Camera',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.settings,
                  ),
                  activeItem: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  itemLabel: 'Settings',
                ),
              ],
              onTap: (index) {
                /// control your animation using page controller
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
            )
          : null,
    );
  }
}
