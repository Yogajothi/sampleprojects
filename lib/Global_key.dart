import 'package:flutter/material.dart';

class textSt extends StatelessWidget {
final String text;
final double fontSize;
final FontWeight fontWeight;

const textSt({this.text,this.fontSize,this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight
      ),
    );
  }
}
class icons extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final double size;

  const icons({this.iconData,this.color,this.size});
  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: color,
      size: size,
    );
  }
}

