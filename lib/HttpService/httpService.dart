import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';

Future<Album> fetchAlbum() async{
  final response = await http.get('https://jsonplaceholder.typicode.com/albums/1');
  if(response.statusCode == 200){
    return Album.fromJson(jsonDecode(response.body));
  }else{
    throw Exception('Faild to load Album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({ @required this.userId,
    @required this.id,
    @required this.title,});

  factory Album.fromJson(Map<String,dynamic>json){
    return Album(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,

    );
  }
}

void main() => runApp(MaterialApp(home: myApp()));

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  Future<Album>futureAlbum;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Http'),),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context,snapshot){
            if(snapshot.hasData){
              return Column(
                children: <Widget>[
                  Text('User Id : ${snapshot.data.userId}'),
                  Text('Id : ${snapshot.data.id}'),
                  Text(snapshot.data.title)
                ],
              );
            }else if(snapshot.error){
              return Text('${snapshot.error}');
            }
            return CircularProgressIndicator();
          },
        ),
      )
    );
  }
}
//SingleChildScrollView(
//child: Padding(
//padding: const EdgeInsets.all(12.0),
//child: Column(
//children: <Widget>[
//Card(
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.center,
//children: <Widget>[
//ListTile(
//title: Text("Title"),
//subtitle: Text(snapshot.data.title),
//),
//ListTile(
//title: Text("ID"),
//subtitle: Text("${snapshot.data.id}"),
//),
//ListTile(
//title: Text("Body"),
//subtitle: Text(snapshot.data.body),
//),
//ListTile(
//title: Text("User ID"),
//subtitle: Text("${snapshot.data.userId}"),
//),
//],
//),
//),
//],
//),
//),
//);