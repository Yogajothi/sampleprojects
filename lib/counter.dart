import'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int count = 0;
  void increment() {
    setState(() {
      count = count + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Colors.orangeAccent,
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black87))
      ),
      home: Scaffold(
        persistentFooterButtons: <Widget>[
          Icon(Icons.add_call),
          Icon(Icons.add_comment)
        ],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text('Call'),
              icon: Icon(Icons.phone)
            ),
            BottomNavigationBarItem(
                title: Text('Message'),
                icon: Icon(Icons.message)
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increment,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          title: Text('Increment Counter'),
          centerTitle: true,
          elevation: 10.0,
          leading:Icon(Icons.arrow_back),
          actions: <Widget>[
            Icon(Icons.settings)
          ],
        ),
        body: Center(
          child: Text(
              'Counter=' + count.toString(),
              style: TextStyle(fontSize: 18),
          ),
      ),
    ));
  }
}
