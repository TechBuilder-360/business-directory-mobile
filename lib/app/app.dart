import 'dart:async';

import 'package:biz_directory/app/connectivity.dart';
import 'package:biz_directory/configs/themes.dart';
import 'package:biz_directory/views/onboarding/Splash_Screen.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
//
// The connectivity check should be implemented on this page using stream builder
// so that it is accessible via inherited widget.
//
  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business Directory',
      theme: lightTheme(),
      darkTheme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }

}
