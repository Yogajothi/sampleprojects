import 'package:flutter/material.dart';
import 'BottomBar/naviPg.dart';


void main() => runApp(MyApp());
/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: naviPg(),
    );
  }
}