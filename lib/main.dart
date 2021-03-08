
import 'package:flutter/material.dart';
import 'views/onboarding/Splash_Screen.dart';
import 'configs/themes.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';

void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() {
  _enablePlatformOverrideForDesktop();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business Directory',
      theme: lightTheme(),
      home: SplashScreen(),
    );
  }
}

