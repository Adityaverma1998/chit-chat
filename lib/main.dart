import 'package:chit_chat/presentation/my_app.dart';
import 'package:chit_chat/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
void main() {
  runApp(SplashScreen(onIntitializationComplete: (){
    if (kDebugMode) {
      print('call callBack function here ');
    }
    runApp(const MyApp());
  },));
}

