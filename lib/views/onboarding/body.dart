import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'dart:async';




class Body extends StatefulWidget {


  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _connectionStatus = 'offline';
  final Connectivity _connectivity = Connectivity();
   StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    ConnectivityResult result = ConnectivityResult.none;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: Text('$_connectionStatus'),
        )

    );
  }


  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
        setState(() => _connectionStatus = 'you are online');
        break;
      case ConnectivityResult.mobile:
      setState(() => _connectionStatus = 'you are online');
      break;
      case ConnectivityResult.none:
        setState(() => _connectionStatus = 'you are offline!! check your network connection');
        break;
      default:
        setState(() => _connectionStatus = 'Failed to get connectivity.');
        break;
    }
  }
}