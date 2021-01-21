import'package:flutter/material.dart';

void main() => runApp(settings());

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  int currentIndex=1;
  Widget getCurrentFragment(){
    
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Yogajothi',style: TextStyle(fontSize: 18,color: Colors.white),),
            SizedBox(height: 20,),
            Icon(Icons.account_circle,size: 20,color: Colors.amberAccent,),
          ],
        ),
      ),
    );
  }
}
