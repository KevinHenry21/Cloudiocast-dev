import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class ArCamera extends StatelessWidget {
  late UnityWidgetController _unityWidgetController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: UnityWidget(
          onUnityCreated: onUnityCreated,
          onUnityMessage: onUnityMessage,

          fullscreen: false,
        ),
      ),
    );
  }

  // Communication from Unity to Flutter
  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
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
      print('Received scene loaded from unity buildIndex: ${sceneInfo.buildIndex}');
    }
  }
}