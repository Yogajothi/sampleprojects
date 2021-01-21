import 'package:flutter/material.dart';
import 'dart:io';

class Colours{
//  const Colors();

  static const loginGradientStart = const Color(0xFF02BB9F);
  static const loginGradientEnd = const Color(0xFF167F67);

  static const primatGradient = const LinearGradient(
      colors: [loginGradientStart,loginGradientEnd],
    stops : [0.0 , 0.1],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter
  );
}