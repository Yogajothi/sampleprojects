import 'package:flutter/material.dart';
import 'package:sample01/BottomBar/naviPg.dart';
import 'package:sample01/Drawer_screen.dart';
import 'package:sample01/internetChecker.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkInternet().checkConnection(context);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    checkInternet().listener.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return naviScreen();
  }
}


//class HomePage extends StatelessWidget {
//
//
//  @override
//  Widget build(BuildContext context) {
//    return  naviScreen();
//  }
//}
