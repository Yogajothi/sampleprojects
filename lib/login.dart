import 'package:flutter/material.dart';
import 'package:sample01/ArticlePage.dart';
import 'package:sample01/sampleCode.dart';
//import 'package:sample01/BottomBar/myapp.dart';
//import 'package:sample01/singleTonKey.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'file:///D:/Flutter/FlutterProjects/sample01/lib/BottomBar/myapp.dart';
import 'internetChecker.dart';
import 'globals.dart' as globals;

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

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
    return Scaffold(
      body: Container(
        width: double.infinity ,
        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0.2,
                0.4,
                0.6,
                0.8
              ],
              colors: [
                Colors.purple[600],
                Colors.purple[500],
                Colors.purple[300],
                Colors.purple[200],
              ]),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/google.png",
                height: 70.0,
                //color: Colors.white,
              ),
              SizedBox(height: 50.0),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle, color: Colors.white),
                  hintText: 'User name',
                  hintStyle: TextStyle(color: Colors.white54),

                ),
              ),
              SizedBox(height: 50.0),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.lock, color: Colors.white),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white54)
                ),
              ),
              SizedBox(height: 80.0,),
              RaisedButton(
                onPressed: ()  {
                  Text('$User.fromJson(name)');
//                  SharedPreferences prefs = await SharedPreferences.getInstance();
//                  prefs.setString('username', null);
//                  prefs.setString('password', null);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MyApp()));
                },
                child: Text('Submit',style: TextStyle(color: Colors.black),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
