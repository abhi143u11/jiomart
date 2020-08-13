import 'package:flutter/material.dart';

import 'splash/splashscreen.dart';

import 'Constant/Constant.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => AnimatedSplashScreen(),
        HOME_SCREEN: (BuildContext context) => HomePage(),
      },
      home: AnimatedSplashScreen(),
    );
  }
}
