import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: MyApp()
));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beginners',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child:FlatButton(
            onPressed: (){},
        child: Text('This is a flutter framework',style: TextStyle(fontSize:22,fontWeight: FontWeight.bold),),
          color: Colors.amber,
        )
      ),
    );
  }
}
