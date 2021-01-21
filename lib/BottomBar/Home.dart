import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


//void main() => runApp(homePg());
//
//class homePg extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(home: bussPage());
//  }
//}
//
//class bussPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
////        appBar: AppBar(title: const Text('Appbar')),
//        body: MyStatelessWidget(),
//      ),
//    );
//  }
//}

class homePg extends StatelessWidget {
  homePg({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        height: 150,
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
                buildItemForPosition()),
      ),
      Container(
        height: 350,
        width: double.infinity,
        child: DefaultItemTabController(),
      ),
    ]);
  }
}



class DefaultItemTabController extends homePg {
  final List<String> _tabs = ['Current team', 'Score', 'Leading', 'Game'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tabs.length, // This is the number of tabs.
        child: Scaffold(
            appBar: PreferredSize(preferredSize: Size.fromHeight(40),
              child:AppBar(
                automaticallyImplyLeading: false,
              backgroundColor: Colors.grey[200],
              flexibleSpace: TabBar(
                labelColor: Colors.blue,
                isScrollable: true,
                unselectedLabelColor: Colors.blue.withOpacity(0.3),
                indicatorColor: Colors.blue,
                tabs: _tabs.map((String name) => Tab(text: name)).toList(),
              ),)
            ),
            body: TabBarView(children: <Widget>[
              Container(child: listPosition(),),
              Container(child: Center(child: listPosition(),),),
              Container(child: Center(child: listPosition(),),),
              Container(child: Center(child: playerDetail(),),),
            ])));
  }
}
class listPosition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body:  new Container(
            height: 320,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 16,
                itemBuilder: (context, index) =>
                    buildItemForPosition()))
    );
  }
}

class buildItemForPosition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(18.0),
            ),
            border: Border.all(
              color: Colors.black,
            ),
            color: Colors.white),
        margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
        height: 150,
        width: 100,
        child: new Stack(
          children: <Widget>[
            new Positioned(
                left: 10.0,
                top: 25,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(
                        100.0,
                      )),
                      border: Border.all(
                        color: Colors.black,
                      )),
                )),
            new Positioned(
                left: 110.0,
                top: 0.0,
                child: Container(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 100, maxWidth: 120),
                      child: Column(
                        children: <Widget>[
                          AutoSizeText(
                            'Home',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                backgroundColor: Colors.amberAccent, fontSize: 15),
                          ),
                          SizedBox(height: 10),
                          AutoSizeText(
                            '11.00 to 14.00 PM',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(height: 10),
                          AutoSizeText('3-1', textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.amberAccent,
                                fontSize: 18),
                          ),
                          SizedBox(height: 10),
                          AutoSizeText('Rajasthan indoor tour stadium,Rajasthan',
                              textAlign: TextAlign.center,
                              minFontSize: 8,
                              maxFontSize: 30,
                              maxLines: 2)
                        ],
                      ),
                    ))),
            new Positioned(
                right: 10.0, top: 25.0,
                child: Container(
                  height: 80, width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(60.0),),
                      border: Border.all(color: Colors.black,)),
                ))
          ],
        ));
  }
}
class playerDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  new Container(
            height: 300,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 16,
                itemBuilder: (context, index) =>
                    _buildItemFordetail(context,index)))
    );
  }
  Widget _buildItemFordetail(context,index) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(18.0),
            ),
            border: Border.all(
              color: Colors.black,
            ),
            color: Colors.white),
        margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
        height: 90,
        width: 100,
        child: new Stack(
          children: <Widget>[
            new Positioned(
                left: 40.0,
                top: 15,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                      borderRadius: BorderRadius.all(Radius.circular(
                        50.0,
                      )),
                      border: Border.all(
                        color: Colors.black,
                      )),
                )),
            new Positioned(
                left: 110.0,
                top: 25.0,
                child: Container(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 100, maxWidth: 120),
                      child: Column(
                        children: <Widget>[
                          AutoSizeText(
                            'Yogajothi chandrasekaran ',
                            minFontSize: 10,
                            maxFontSize: 40,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ))),
            new Positioned(
                left: 15.0, top: 32.0,
                child: Container(
                  child: Row(
                    children: <Widget>[
                    AutoSizeText(
                    '0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                         fontSize: 20),
                  ),
                ]))
            ),
            new Positioned(
                left: 270.0, top: 30.0,
                child: Container(
                    child: Row(
                        children: <Widget>[
                          AutoSizeText(
                            '0 points',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18),
                          ),
                        ]))
            )

          ],
        ));
  }
}


