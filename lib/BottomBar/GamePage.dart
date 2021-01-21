import 'package:flutter/material.dart';
import 'Home.dart';

//void main() => runApp(gamePage());

class gamePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: gamePg(),
//    );
//  }
//}
//
//class gamePg extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: MyStatelessWidget(),
//    );
//  }
//}
//
//class MyStatelessWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(90),
                    child: Text(''),
                  ),
                  flexibleSpace: new Container(
                    height: 450,
                    width: double.infinity,
                    color: Colors.grey[200],
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
                            buildItemForPosition()),),
//                  floating: true,
////                  expandedHeight: 100.0,
//                  forceElevated: innerBoxIsScrolled,
                  centerTitle: true,
                ),
              ];
            },
            body:new Container(
                height: 320,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: 16,
                    itemBuilder: (context, index) =>
                        buildItemForPosition()))
        ));
  }
}
