import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:sample01/Global_key.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:sample01/BottomBar/naviPg.dart';

void main() => runApp(drawerPage());

class drawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Bar',
      home: drawerScreen(),
    );
  }
}

class drawerScreen extends StatefulWidget {
  @override
  _drawerScreenState createState() => _drawerScreenState();
}

class _drawerScreenState extends State<drawerScreen> {

//  List names = [
//    {'icon': Icons.arrow_forward, "name": 'ACCOUNT SETTING'},
//    {'name': 'NOTIFICATION SETTINGS'},
//    {'icon': Icons.arrow_forward, 'name': 'PRIVACY POLICY'},
//    {'icon': Icons.arrow_forward, 'name': 'TERMS OF USE'},
//    {'name': 'VERSION 1.0.2'}
//  ];
//  bool _value = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('App Bar'),),
      drawer: Drawer(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    height: 150.0,
                    width: double.infinity,
                    padding: EdgeInsets.all(20.0),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)),
                      image: new DecorationImage(
                        image: new AssetImage(
                          'assets/purple.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: new Stack(
                      children: <Widget>[
                        new Positioned(
                          left: 5,
                          top: 2.0,
                          child: new Text(
                            'Yogajothi chandrasekaran',
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                        ),
                        new Positioned(
                          top: 40.0,
                          left: 100.0,
                          child: new Icon(
                            Icons.account_circle,
                            size: 70,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 20),
                new Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.amberAccent,
                            width: 2.0,
                          )),
                      height: 150.0,
                      width: double.infinity,
                      child: new Stack(
                        children: <Widget>[
                          new Positioned(
                            left: 2.0,
                            child: new Column(
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    Text(
                                      'Loyality Points',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                new Row(
                                  children: <Widget>[
                                    Text(
                                      '0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          new Positioned(
                              left: 140.0,
                              top: 80.0,
                              child: RaisedButton(
                                color: Colors.amberAccent,
                                onPressed: () {},
                                child: Text(
                                  'HOW IT WORKS',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                new Center(
//                mainAxisSize: MainAxisSize.max,
//                mainAxisAlignment: MainAxisAlignment.start,
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Container(
//                    margin: EdgeInsets.only(left: 5, right: 5),
//
//                    decoration: BoxDecoration(
//                        border:
//                            Border.all(color: Colors.amberAccent, width: 2.0)),
//                    height: 280.0,
//                    alignment: Alignment.topRight,
//                    child: ListView.separated(
//
//                      itemCount: names.length,
////                            itemExtent:55,
//                      separatorBuilder: (context, index) =>
//                          Divider(height: 0.85),
//                      itemBuilder: (BuildContext context, int index) =>
//                          _buildItemsForListView(context, index),
//                    ),
                    child: FutureBuilder(
                      future: DefaultAssetBundle.of(context).loadString(
                          'assets/list.json'),
                      builder: (context, snapshot) {
                        var new_data = json.decode(snapshot.data.toString());
                        return ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment
                                      .stretch,
                                  children: <Widget>[
                                    Text('Name : ' + new_data[index]['name']),
//                                  SizedBox(height: 10.0,),
//                                  Text('Number : ' + new_data[index]['number']),
//                                  SizedBox(height: 10.0,),
//                                  Text('Email : ' + new_data[index]['email'])
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: new_data == null ? 0 : new_data.length,
                        );
                      },
                    )
                )
              ])
      ),);
  }
}