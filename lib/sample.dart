import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      home:MyHomePage() ,
    );
  }
}


class MyHomePage extends StatefulWidget {
//  final String title;

  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated text"),),
      body: Container(
      child:Column(
        children: <Widget>[
          Text("Hi"),
          FadeAnimatedTextKit(
              text: ['Welcome to Google kit ',"Select the time After start to walk"],
              textStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
              isRepeatingAnimation: false,
              textAlign: TextAlign.center,
              alignment: AlignmentDirectional.center
          ),
        RaisedButton(
          child: Text("Press"),
          onPressed: (){
            animated();
          },
        )

        ],
      ),
      ));
  }
// Widget animated(){
//  return Container(
//    height: 120,
//    color: Colors.pinkAccent,
//    child: TyperAnimatedTextKit(
//      text: ["hello"," everyone"],
//      isRepeatingAnimation: false,
//      textStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20),
//    ),
//  );
// }
 void animated(){
  setState(() {
    TyperAnimatedTextKit(
      text: ["hello"," everyone"],
      isRepeatingAnimation: false,
      textStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20),
    );
  });
 }
}