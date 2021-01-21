import 'package:flutter/material.dart';
//import 'package:auto_size_text/auto_size_text.dart';

void main() => runApp(shopPg());

class shopPg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Bar',
      home: shopPage(),
    );
  }
}

class shopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Grey Example'),
      ),
      body:Center(
        child:Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          Container(
            height: 300,
            child: ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.red, BlendMode.color),
            child:Image.asset('assets/reload.jpg'),
          ),),
          Text('No reaction found',style: TextStyle(color:Colors.blue ),)
        ],)
      )
//          new Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
//            Container(
//            height: 150.0,
//            width: double.infinity,
//            padding: EdgeInsets.all(20.0),++++++++++++++.
//            decoration: new BoxDecoration(
//              borderRadius: BorderRadius.only(
//                  bottomLeft: Radius.circular(20.0),
//                  bottomRight: Radius.circular(20.0)),
//              image: new DecorationImage(
//                image: new AssetImage(
//                  'assets/nike1.jpg',
//                ),
//                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
//                fit: BoxFit.cover,
//              ),
//            )),
//      ]),
    );
  }
}
