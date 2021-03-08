import 'package:biz_directory/configs/constants.dart';
import 'package:flutter/material.dart';

import 'views/onboarding/Splash_Screen.dart';
import 'configs/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business Directory',
      theme: LightTheme(),
      home: SplashScreen(),
    );
  }
}

