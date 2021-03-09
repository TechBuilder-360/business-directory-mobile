import 'dart:async';

import 'package:connectivity/connectivity.dart';

////import 'dart:async';
////import 'package:connectivity/connectivity.dart';
////
////class ConnectivityService {
////  //
////  StreamController<ConnectivityResult> connectionStatusController =
////  StreamController<ConnectivityResult>();
////  // Stream is like a pipe, you add the changes to the pipe, it will come
////  // out on the other side.
////  // Create the Constructor
////
////  ConnectivityService() {
////    // Subscribe to the connectivity changed stream
////
////    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
////      connectionStatusController.add(result);
////    });
////  }
////}
//
//import 'dart:async';
//import 'package:connectivity/connectivity.dart';
//import 'package:provider/provider.dart';
//import 'package:toast/toast.dart';
//
//class ConnectivityService {
//  //
//  StreamController<ConnectivityResult> connectionStatusController =
//  StreamController<ConnectivityResult>();
//  // Stream is like a pipe, you add the changes to the pipe, it will
//  // come out on the other side.
//  // Create the Constructor
//
//  ConnectivityService() {
//    // Subscribe to the connectivity changed stream
//    Connectivity().onConnectivityChanged.listen(
//            (ConnectivityResult result) {
//          connectionStatusController.add(result);
//        });
//  }
//}void checkConnectivity(context) async {
//  var connectivityResult = Provider.of<ConnectivityResult>(context);
//  var conn  = getConnectionValue(connectivityResult);
//  Toast.show(conn, context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
////  setState(() {
////  _networkStatus3 = '<Provider> :: ' + conn;
////  });
//}
//
//String getConnectionValue(var result) {
//  String status = '';
//  switch (result) {
//    case ConnectivityResult.mobile:
//    case ConnectivityResult.wifi:
//    case ConnectivityResult.none:
//      result.toString();
//      break;
//    default:
//      // ignore: unnecessary_statements
//      'Failed to get Connection status!.';
//      break;
//  }
//  return status;
//}

//class NetworkProvider{
//
//  StreamSubscription<ConnectivityResult> _subscription;
//  StreamController<ConnectivityResult> _networkStatusController;
//
//  StreamSubscription<ConnectivityResult> get subscription =>_subscription;
//  StreamController<ConnectivityResult> get networkStatusController => _networkStatusController;
//
//  NetworkProvider(){
//    _networkStatusController = StreamController<ConnectivityResult>();
//    _invokeNetworkStatusListen();
//  }
//
//  void _invokeNetworkStatusListen() async {
//    _networkStatusController.sink.add(await Connectivity().checkConnectivity());
//
//    _subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
//      _networkStatusController.sink.add(result);
//    });
//  }
//
//  void disposeStreams(){
//    _subscription.cancel();
//    _networkStatusController.close();
//  }
//}