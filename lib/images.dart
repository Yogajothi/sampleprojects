import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import './product_manager.dart';

void main() {
  //debugPaintSizeEnabled=true;
  //debugPaintBaselinesEnabled=true;
  //debugPaintPointersEnabled=true;
  runApp(ImageExample());
}
class ImageExample extends StatelessWidget {
  Widget build(BuildContext context) {
    print('[ProductManager Widget] build1()');
    return MaterialApp(
      //debugShowMaterialGrid: true,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.white

      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Image collection'),
            centerTitle: true,
          ),
          body: ProductManager(),
      ),
    );
  }
}
