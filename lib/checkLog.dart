//import 'globals.dart'as globals;
import 'package:flutter/material.dart';
import 'package:sample01/sideMenu.dart';

void main() => runApp(MaterialApp(
  title: 'Login',
  theme: ThemeData(primarySwatch: Colors.indigo),
  home: checkLog(),
));

class checkLog extends StatefulWidget {
  @override
  _checkLogState createState() => _checkLogState();
}

class _checkLogState extends State<checkLog> {

  bool loggedIn = false;
  String _email, _username, _password;

  final formKey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mainKey,
      body: Padding(
          padding: EdgeInsets.all(10.0),
          child: loggedIn == false
              ? RaisedButton(
            child: Text("LogIn"),
            onPressed: (){
              Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: "Email:",
                      ),
                      validator: (str) =>
                      !str.contains('@') ? "Not a Valid Email!" : null,
                      onSaved: (str) => _email = str,
                    ),
                    TextFormField(
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: "Username:",
                      ),
                      validator: (str) =>
                      str.length <= 5 ? "Not a Valid Username!" : null,
                      onSaved: (str) => _username = str,
                    ),
                    TextFormField(
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: "Password:",
                      ),
                      validator: (str) =>
                      str.length <= 7 ? "Not a Valid Password!" : null,
                      onSaved: (str) => _password = str,
                      obscureText: true,
                    ),
                    RaisedButton(
                      child: Text("Submit"),
                      onPressed: onPressed,
                    ),
                  ],
                ),
              );
            },
          )
              : Center(
            child: Column(
              children: <Widget>[
                Text(" $_username"),
                Text("$_email"),
                RaisedButton(
                  child: Text("Log Out"),
                  onPressed: () {
                    setState(() {
                      loggedIn = false;
                    });
                  },
                )
              ],
            ),
          )),
    );
  }
  void onPressed() {
    var form = formKey.currentState;

    if (form.validate()) {
      form.save();
      setState(() {
        loggedIn = true;
      });
      var snackbar = SnackBar(
        content:
        Text('Username: $_username, Email: $_email, Password: $_password'),
        duration: Duration(milliseconds: 5000),
      );

      mainKey.currentState.showSnackBar(snackbar);
    }
  }

}



//class formBuild extends StatefulWidget {
//  @override
//  _formBuildState createState() => _formBuildState();
//}
//
//class _formBuildState extends State<formBuild> {
//
//  bool loggedIn = false;
//  String _email, _username, _password;
//
//  final formKey = GlobalKey<FormState>();
//  final mainKey = GlobalKey<ScaffoldState>();
//  @override
//  Widget build(BuildContext context) {
//    return
//  }
//
//}