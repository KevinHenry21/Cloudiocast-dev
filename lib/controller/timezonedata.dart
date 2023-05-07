import 'package:flutter/material.dart';

import 'dart:io';
class TimeZoneData {
  String location;
  String time;
  String description;
  Image imageFile; 
  
  

  TimeZoneData({required this.location, required this.time, required this.description, required this.imageFile});

  // AssetImage getImage(){
  //   switch(description){
  //     case 'overcast cloud': return AssetImage('images/1.png'); break;
  //     default: return AssetImage('images/1.png'); break;
  //   }
  // }
  
}