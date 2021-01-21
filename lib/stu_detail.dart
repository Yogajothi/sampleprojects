import 'package:flutter/material.dart';
import 'package:sample01/stud_detail1.dart';
void main() => runApp(MaterialApp(
home: Dashboard(),
));


class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Student detail',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 50, 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/yojo.jpg'),
              radius: 40.0,
            ),
            ),
            Divider(
              height: 20,color: Colors.black,
            ),
            Text('Name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22,letterSpacing: 2,decoration: TextDecoration.underline),),
            SizedBox(height: 10),
            Text('Yojo',style: TextStyle(color: Colors.lightBlueAccent,fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 15),
            Text('Department',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22,letterSpacing: 2,decoration: TextDecoration.underline),),
            SizedBox(height: 10),
            Text('EEE',style: TextStyle(color: Colors.lightBlueAccent,fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 15),
            Text('Email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22,letterSpacing: 2,decoration: TextDecoration.underline),),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Icon(Icons.mail),
                Text('jothiyoga99@gmail.com',style: TextStyle(color: Colors.lightBlueAccent,fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 15),
            Text('Phone Number',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22,letterSpacing: 2,decoration: TextDecoration.underline),),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Icon(Icons.phone),
                Text('9344789967',style: TextStyle(color: Colors.lightBlueAccent,fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),
    );
  }
}