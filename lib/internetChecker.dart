import 'dart:async';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';

class checkInternet{
  StreamSubscription<DataConnectionStatus>listener;
  var InternetStatus = 'Unknown';
  var ContentMessage = 'Unknown';


void _showDialog(String title,String content ,BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
            title: new Text(InternetStatus),
            content: new Text(content),
            actions: <Widget>[
              new FlatButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child:new Text("Close") )
            ]
        );
      }
  );
}
  checkConnection(BuildContext context) async{
    listener = DataConnectionChecker().onStatusChange.listen((status) {
      switch(status){
        case DataConnectionStatus.connected:
          InternetStatus = "Connected to the Internet";
          ContentMessage = "Connected to the Internet";
          _showDialog(InternetStatus, ContentMessage, context);
          break;
        case DataConnectionStatus.disconnected:
          InternetStatus = "You are disconnect the internet";
          ContentMessage = "Check your internet connection";
          _showDialog(InternetStatus, ContentMessage, context);
          break;
      }
    });
    return await DataConnectionChecker().connectionStatus;
  }
}