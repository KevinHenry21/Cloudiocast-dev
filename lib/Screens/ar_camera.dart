import 'package:flutter/foundation.dart';
import 'package:demo_run/controller/global_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

// class ArCamera extends StatelessWidget {
//   late UnityWidgetController _unityWidgetController;
//   final GlobalController globalController =
//   Get.put(GlobalController(), permanent: true);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: UnityWidget(
//         onUnityCreated: onUnityCreated,
//         onUnityMessage: onUnityMessage,
//         fullscreen: false,
//       ),
//     );
//   }

//   // Communication from Unity to Flutter
//   void onUnityMessage(message) {
//     print('Received message from unity: ${message.toString()}');
//   }

//   // Callback that connects the created controller to the unity controller
//   void onUnityCreated(controller) {
//     this._unityWidgetController = controller;
//     _unityWidgetController.postMessage('Map', 'Latitude', globalController.getLattitude().value);
//     _unityWidgetController.postMessage('Map', 'Latitude', globalController.getLongitude().value);
//     _unityWidgetController.postMessage('Location', 'Text Input', "Bangalore");
//     _unityWidgetController.postMessage('Country code', 'Text Input', "IN");
//   }

//   // Communication from Unity when new scene is loaded to Flutter
//   void onUnitySceneLoaded(SceneLoaded sceneInfo) {
//     if (kDebugMode) {
//       print('Received scene loaded from unity: ${sceneInfo.name}');
//     }
//     if (kDebugMode) {
//       print(
//           'Received scene loaded from unity buildIndex: ${sceneInfo.buildIndex}');
//     }
//   }
// }

class ArCamera extends StatefulWidget {
  @override
  _ArCameraState createState() => _ArCameraState();
}

class _ArCameraState extends State<ArCamera> {
  static final GlobalKey<ScaffoldState> _scaffoldState =
      new GlobalKey<ScaffoldState>();

  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  late UnityWidgetController _unityWidgetController;

  void init() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UnityWidget(
        onUnityCreated: onUnityCreated,
        onUnityMessage: onUnityMessage,
        fullscreen: false,
      ),
    );
  }

  // Communication from Unity to Flutter
  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
    _unityWidgetController.postMessage(
        'Location Manager', 'CityUpdate', "Bangalore");
    _unityWidgetController.postMessage('Country code', 'CountryUpdate', "IN");
  }

  // Callback that connects the created controller to the unity controller
  void onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }

  // Communication from Unity when new scene is loaded to Flutter
  void onUnitySceneLoaded(SceneLoaded sceneInfo) {
    if (kDebugMode) {
      print('Received scene loaded from unity: ${sceneInfo.name}');
    }
    if (kDebugMode) {
      print(
          'Received scene loaded from unity buildIndex: ${sceneInfo.buildIndex}');
    }
  }
}
