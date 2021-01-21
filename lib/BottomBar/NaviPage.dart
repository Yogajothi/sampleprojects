import 'package:flutter/material.dart';
//import 'package:auto_size_text/auto_size_text.dart';
import 'package:sample01/BottomBar/Home.dart';

//void main() => runApp(naviPage());

//class naviPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: naviPage(),
//    );
//  }
//}

class naviPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//            appBar: AppBar(title: Text('Home'),),
        backgroundColor: Colors.grey[200],
        body:  Column(
            children: <Widget>[
            Container(
              height: 150,
              width: double.infinity,
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
//                    childAspectRatio: 18 / 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                    crossAxisCount: 1,
                    childAspectRatio: 9 / 21,
                  ),
                  itemCount: 16,
                  itemBuilder: (context, index) =>
                      buildItemForPosition(),),
//
            ) ]),
        );
  }
}
