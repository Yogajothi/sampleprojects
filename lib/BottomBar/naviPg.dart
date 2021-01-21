import 'package:flutter/material.dart';
import 'file:///D:/Flutter/FlutterProjects/sample01/lib/BottomBar/GamePage.dart';
import 'file:///D:/Flutter/FlutterProjects/sample01/lib/BottomBar/Home.dart';
import 'file:///D:/Flutter/FlutterProjects/sample01/lib/BottomBar/NaviPage.dart';
import 'file:///D:/Flutter/FlutterProjects/sample01/lib/BottomBar/ShopPage.dart';
import 'file:///D:/Flutter/FlutterProjects/sample01/lib/BottomBar/videoPage.dart';
import 'package:sample01/Drawer_screen.dart';

//void main() => runApp(MyApp());
/// This is the main application widget.
class naviScreen extends StatelessWidget {
//  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample',
      home: naviPg(),
    );
  }
}
class naviPg extends StatefulWidget {

  @override
  _naviPgState createState() => _naviPgState();
}

class _naviPgState extends State<naviPg> {

  int _currentIndex = 0;
  String _title;

  final List<Widget> _children= [
   naviPage(),
    homePg(),
    videoPage(),
    gamePage(),
    shopPage()
  ];
  @override
  void initState(){
    super.initState();
    _title = 'Home';
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(_title),
          centerTitle: true,
        ),
        drawer: drawerScreen(),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped, // new
          iconSize: 20.0,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 12.0,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home',style: TextStyle(fontSize: 12.0),),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.business),
              title: new Text('Business',style: TextStyle(fontSize: 12.0)),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.videocam,),
                title: Text('Video',style: TextStyle(fontSize: 12.0))
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.games),
              title: new Text('Game',style: TextStyle(fontSize: 12.0)),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text('Shop',style: TextStyle(fontSize: 12.0))
            )
          ],
        ),
      );
    }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
//      print('$_currentIndex');
      switch(index){
        case 0: return _title = 'Home' ;
        break;
        case 1: return _title = 'Business';
        break;
        case 2: return _title = 'Video';
        break;
        case 3: return _title = 'Game';
        break;
        case 4: return _title = 'Shop';
        break;
      }
    });
  }
}
