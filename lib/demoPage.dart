import 'package:flutter/material.dart';

void main() => runApp(demoPage());

class demoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: cellPage(),
    );
  }
}

class cellPage extends StatelessWidget {
  final List<String> growableList = ['', '', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
//            decoration: BoxDecoration(border: Border.all(color:Colors.black)),
//          color: Colors.green,
                height: 550,
                child: ListView.builder(
                    itemCount: growableList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildItemsForListView(context, index);
                    }))
          ],
        ));
  }

  Widget _buildItemsForListView(BuildContext context, int index) {
    return Column(children: <Widget>[
      Container(
        height: 90,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: new BorderRadius.all(Radius.circular(40.0))),
        padding: EdgeInsets.only(left: 16, right: 16.0, top: 30, bottom: 20),
        width: double.infinity,
        margin: EdgeInsets.all(5.0),
        // height: 100.0,
        // color: Colors.deepPurple,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(growableList[index]),
            Container(
              height: 20,
              color: Colors.purple,
              width: double.infinity,
              child: new Stack(
                children: <Widget>[
                  new Positioned(
                      left: 18.0,
                      right: 16.0,
                      child: Container(
                        height: 20,
                        color: Colors.orange,
//                        decoration: BoxDecoration(
//                            border: Border.all(
//                              color: Colors.black,
//                            ),
//                            borderRadius:
//                                new BorderRadius.all(Radius.circular(40.0))),
                      )),
                  new Positioned(
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius:
                                new BorderRadius.all(Radius.circular(40.0))),
                      ))
                ],
              ),
            )
          ],
        ),
      )
    ]);
  }
}
