import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //You Have To Call on your Starting Screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),


    );
  }
}