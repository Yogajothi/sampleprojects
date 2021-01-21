import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(layout());

class layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid list';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
            crossAxisCount: 2,
            children: List.generate(100, (index) {
              return Center(
                child: Text('Item $index', style: Theme
                    .of(context)
                    .textTheme
                    .headline5,
                ),
              );
            })
        ),
      ),
    );
  }
}

