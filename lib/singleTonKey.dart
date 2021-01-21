import 'dart:async' show Future;
//import 'package:flutter/material.dart';
//import 'package:sample01/BottomBar/myapp.dart';
//import 'package:sample01/login.dart';
//import 'package:sample01/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
  static Future<SharedPreferences> get _instance async => _prefsInstance ??= await SharedPreferences.getInstance();
  static SharedPreferences _prefsInstance;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance;
  }

  static int getInt(String key, [int defValue]) {
    return _prefsInstance.getInt(key) ?? defValue ?? "";
  }

  static Future<bool> setInt(String key, int value) async {
    var prefs = await _instance;
    return prefs?.setInt(key, value) ?? Future.value(false);
  }
}

//Future<void> main() async{
//  WidgetsFlutterBinding.ensureInitialized();
//  SharedPreferences prefs = await SharedPreferences.getInstance();
//  var email = prefs.getString('username');
////  var password = prefs.getString('password');
//  print(email);
//  runApp(MaterialApp(home: email == null ? Login() : Home()));
//}

//class Login extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: RaisedButton(
//          onPressed: () async {
//            //after the login REST api call && response code ==200
//            SharedPreferences prefs = await SharedPreferences.getInstance();
//            prefs.setString('email', 'useremail@gmail.com');
//            Navigator.pushReplacement(context,
//                MaterialPageRoute(builder: (BuildContext ctx) => Home()));
//          },
//          child: Text('Login'),
//        ),
//      ),
//    );
//  }
//}

//class Home extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text('Home'),),
//      body: Center(
//        child: RaisedButton(
//            onPressed: () async{
//              SharedPreferences prefs = await SharedPreferences.getInstance();
//              prefs.remove('email');
//              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login()));
//            },
//          child: Text('Logout'),
//        ),
//      ),
//    );
//  }
//}

