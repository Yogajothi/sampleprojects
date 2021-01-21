import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:sample01/checkLog.dart';

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
  List data;
  bool _Icon = true;
  bool loggedIn = false;
  String _email, _username, _password;

  final formKey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
            physics: ScrollPhysics(),
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
                          image: new AssetImage('assets/purple.jpg',),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child:checkLog()
//                      child: new Stack(
//                        children: <Widget>[
//                          new Positioned(
//                            left: 5,
//                            top: 2.0,
//                            child: new Text('Yogajothi chandrasekaran', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),),
//                          ),
//                          new Positioned(
//                            top: 40.0, left: 100.0,
//                            child: new Icon(Icons.account_circle, size: 70, color: Colors.white,),
//                          ),
//                        ],
//                      )
                  ),
                  SizedBox(height: 20),
                  new Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.amberAccent, width: 2.0,)),
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
                                      Text('Loyality Points', style: TextStyle(fontSize: 20),),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  new Row(
                                    children: <Widget>[
                                      Text('0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                            new Positioned(
                                left: 140.0, top: 80.0,
                                child: RaisedButton(color: Colors.amberAccent, onPressed: () {},
                                  child: Text('HOW IT WORKS', style: TextStyle(color: Colors.white),),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                      decoration: new BoxDecoration(
                          border: Border.all(
                              color: Colors.amberAccent, width: 2.0)),
                      height: null,
                      padding: EdgeInsets.only(
                          top: 0.0, left: 6.0, right: 4.0, bottom: 6.0),
                      margin:
                          EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
                      child: FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString('assets/list.json'),
                        builder: (context, snapshot) {
                          var new_data = json.decode(snapshot.data.toString());
                          return ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) => Divider(
                                height: 15.0,
                                indent: 2.0,
                                endIndent: 2.0,
                                color: Colors.amberAccent),
                            itemBuilder: (BuildContext context, int index) {
                              if (index == new_data.length - 4) {

                                Divider(height: 10.0);
                              }
                              return Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Row(children: <Widget>[
                                        Text(' ' + new_data[index]['name']),
                                        SizedBox(width: 60,),
                                        Icon(Icons.arrow_forward_ios)
                                    ],
                              )] ));
                            },
                            itemCount: new_data == null ? 0 : new_data.length,
                          );
                        },
                      ))
                ])),
      ),
    );
  }
}

class logIn extends StatelessWidget {

  bool loggedIn = false;
  String _email, _username, _password;

  @override
  Widget build(BuildContext context) {
    if (loggedIn == false) {
      return RaisedButton(
        child: Text('LOGIN'),
        onPressed: () {
//          Navigator.of(context).pushReplacement(
//              MaterialPageRoute(builder: (context) => checkLog()));
        },
      );
    } else if(loggedIn == true){
      return Column(
        children: <Widget>[
          Text('$_username'),
          Text('$_email')
        ],
      );
    }
  }
}