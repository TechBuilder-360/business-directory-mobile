import 'package:biz_directory/app/connectivity.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




class Body extends StatefulWidget {
  final NetworkProvider networkProvider;

  Body({@required this.networkProvider});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void dispose() {
    widget.networkProvider.disposeStreams();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamProvider<ConnectivityResult>.value(value: widget.networkProvider.networkStatusController.stream,
      child: Consumer<ConnectivityResult>(
        builder: (context, value, _){
          if (value==null){
            return Container();
          }
          return Text("Body");
        },
      ),
    );
  }


}