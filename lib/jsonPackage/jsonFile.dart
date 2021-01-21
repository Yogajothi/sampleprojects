import 'package:flutter/material.dart';
import 'dart:convert';

void main() => runApp(jsonFile());

class jsonFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: jsonPage(),
    );
  }
}

class jsonPage extends StatefulWidget {
  @override
  _jsonPageState createState() => _jsonPageState();
}

class _jsonPageState extends State<jsonPage> {
  List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Json file'),),
      body: Center(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString('assets/list.json'),
          builder: (context,snapshot){
            var new_data =  json.decode(snapshot.data.toString());
            return ListView.builder(itemBuilder: (BuildContext context,int index){
              return Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text('' + new_data[index]['name']),
                      SizedBox(height: 10.0,),
                      Text('Number : ' + new_data[index]['number']),
                      SizedBox(height: 10.0,),
                      Text('Email : ' + new_data[index]['email'])
                    ],
                  ),
                ),
              );
            },
              itemCount: new_data == null ? 0 : new_data.length,
            );
          },
        ),
      ),
    );
  }
}

