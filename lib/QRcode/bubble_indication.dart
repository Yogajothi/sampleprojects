import 'package:flutter/material.dart';
import 'dart:math';

class TabIndicationPainter extends CustomPainter{
  Paint painter;
  final double Target;
  final double Entry;
  final  double radius;
  final double dy;
  final pageController;

  TabIndicationPainter({this.Target = 125.0,
    this.Entry = 25.0,
    this.radius=21.0,
    this.dy = 25.0, this.pageController}) : super(repaint: pageController) {
    painter = new Paint()
      ..color = Color(0xFFFFFFFF)
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas,Size size){
    final pos = pageController.position;
    double fullextent = (pos.maxScrollExtent -  pos.minScrollExtent + pos.viewportDimension);
    double pageOffset = pos.extentBefore / fullextent ;

    bool left2right = Entry < Target;
    Offset entry = new Offset(left2right? Entry : Target, dy);
    Offset target = new Offset(left2right? Target : Entry, dy);

    Path path = new Path();
    path.addArc(new Rect.fromCircle(center: entry,radius: radius), 0.5*pi, 1 * pi);
    path.addRect(new Rect.fromLTRB(entry.dx, dy-radius, target.dx, dy+radius));
    path.addArc(new Rect.fromCircle(center: target,radius: radius), 1.5*pi, 1*pi);
    
    canvas.translate(size.width*pageOffset, 0.0);
    canvas.drawShadow(path, Color(0xFFfbab66), 3.0, true);
    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

}

