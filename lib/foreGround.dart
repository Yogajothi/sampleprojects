import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: myHome(),));

class myHome extends StatefulWidget {
  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> with WidgetsBindingObserver {
//  AppLifecycleState _notification;
  bool _isInForeground = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    _isInForeground = state == AppLifecycleState.resumed;
    if(_isInForeground == true){
      print("App in foreground");
    }else{
      print("App in background");
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      
    );
  }
}
