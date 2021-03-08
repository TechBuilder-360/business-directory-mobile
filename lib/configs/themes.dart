import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData LightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}