import 'package:flutter/material.dart';

abstract class singleTonBase{
  @protected
  String initialText;
  @protected
  String stateText;
  String get currentText => stateText;

  void setStateText(String text){
    stateText = text;
  }

  void reset(){
    stateText = initialText;
  }
}

class singleTonBaseState extends singleTonBase{
  static singleTonBaseState _instance;

  singleTonBaseState._internal(){
    initialText = "A new singleTonBaseState instance has been created";
    stateText = initialText;
    print(stateText);
}
static singleTonBaseState getState(){
    if(_instance == null){
      _instance = singleTonBaseState._internal();
}
    return _instance;
}
}

class singleTonState extends singleTonBase{
  static final singleTonState _instance = singleTonState._internal();

  factory singleTonState(){
    return _instance;
  }

  singleTonState._internal(){
    initialText = "A new singleTonState instance has been created";
    stateText = initialText;
    print(stateText);
  }
}

class singleTonWithoutState extends singleTonBase{
  singleTonWithoutState(){
    initialText = "A new singleTonWithoutState instance has been created";
    stateText = initialText;
    print(stateText);
}
}