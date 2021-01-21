import 'package:flutter/material.dart';

void main() => runApp(pic());

class pic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Picture';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: FadeInImage.assetNetwork(
              placeholder: 'assets/loading.gif',
              image: 'https://picsum.photos/250?image=9',
          ),
        ),
      ),
    );
  }
}
