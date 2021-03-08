import 'package:flutter/material.dart';

import 'body.dart';
import '../../configs/size_config.dart';

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