import 'package:demo_run/utils/Services/notifi_service.dart';
import 'package:demo_run/utils/config/theme.dart';
import 'package:demo_run/utils/config/theme_color.dart';
import 'package:demo_run/utils/config/theme_services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:demo_run/Screens/getting_started_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

// Receive message when app is in background solution for a message
// Future<void> backgroundHandler(RemoteMessage message) async{
//   print(message.data.toString());
//   print(message.notification!.title);
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  NotificationService().initNotification();
  // await Firebase.initializeApp();
  // FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  tz.initializeTimeZones();
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await GetStorage.init();
//   runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => MyApp(),
//         // Wrap your app
//       ),
//
//   );
//
//   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        // TODO: implement build
        return ScreenUtilInit(
            designSize: const Size(428, 926),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return GetMaterialApp(
                debugShowCheckedModeBanner: false,
                useInheritedMediaQuery: true,
                themeMode: ThemeService().theme,
                theme: Themes.light,
                darkTheme: Themes.dark,
                // locale: DevicePreview.locale(context),
                // builder: DevicePreview.appBuilder,
                home: const GetStartedScreen(),
              );
            });
      });
}
