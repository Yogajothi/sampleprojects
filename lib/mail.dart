import 'package:flutter/material.dart';
import 'package:sample01/images.dart';
import 'package:sample01/primary.dart';
import 'package:sample01/promotions.dart';
import 'package:sample01/social.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int currentIndex =1;
  Widget getCurrentFragement(){
    switch (currentIndex){
      case 1:return ImageExample();
      break;
      case 2:return Social();
      break;
      case 3:return Promotions();
      break;
    }
   }
   setCurrentFragement(int index){
    setState(() {
      currentIndex= index;
    });
    Navigator.of(context).pop();
   }
  Widget build(BuildContext context) {
    return  Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 40.0,left: 10.0),
                width: double.infinity,
                height:200.0,
                color:Colors.blueGrey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.account_circle,color: Colors.green,size:60.0),
                    SizedBox(height: 20.0),
                    Text('yogajothi',style:TextStyle(fontSize: 20.0,color: Colors.white)),
                    Text('jothiyoga99@gmail.com',style:TextStyle(fontSize: 15.0,color: Colors.white54)),
                  ],
                ),
              ),
              ListTile(
                selected: currentIndex == 1 ? true : false,
                onTap: (){
                  setCurrentFragement(1);
                },
                title: Text('Primary'),
                leading: Icon(Icons.inbox),
              ),
              ListTile(
                selected: currentIndex == 2 ? true : false,
                onTap: (){
                  setCurrentFragement(2);
                },
                title: Text('Social'),
                leading: Icon(Icons.supervisor_account),
              ),
              ListTile(
                selected: currentIndex == 3 ? true : false,
                onTap: (){
                  setCurrentFragement(3);
                },
                title: Text('Promotions'),
                leading: Icon(Icons.label),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Mail'),
        ),
        body: getCurrentFragement()
      );
  }
}
