import 'package:biz_directory/app/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'body.dart';
import '../../configs/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
//      body: Provider<NetworkProvider>(
//        builder: (context) => Container(),
//        child: Consumer<NetworkProvider>(
//          builder: (context, value, _) =>
//          Container(
//            child: Body(networkProvider: value,
//            ),
//          ),
//        ),
//      ),
    );
  }
}