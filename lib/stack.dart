import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(stack());

class stack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStack(),
    );
  }
}

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Stack',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.loose,
            overflow: Overflow.clip,
            children: <Widget>[
              Container(
                height: 300,
                width: 400,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Top widget',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.purple,
                  child: Center(
                    child: Text(
                      'Middle widget',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                right: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      'End widget',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
