import 'package:flutter/material.dart';
import 'singleTonBase.dart';

void main() =>  runApp(singleTon());

class singleTon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: singletonBase(),
    );
  }
}

class singletonBase extends StatefulWidget {
  @override
  _singletonBaseState createState() => _singletonBaseState();
}

class _singletonBaseState extends State<singletonBase> {
  final List<singleTonBase>stateList = [
    singleTonState(),
    singleTonBaseState.getState(),
    singleTonWithoutState()
  ];

  void _setTextValue([String text = 'Singleton']){
    for(var state in stateList){
      state.setStateText(text);
    }
    setState(() {});
  }

  void _reset(){
    for(var state in stateList){
      state.reset();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollBehavior(),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            for(var state in stateList)
              Padding(padding: EdgeInsets.only(bottom: 20),
              child: Container(
                child:Text(state.currentText,style: TextStyle(color: Colors.white,fontSize: 15),),
              ),),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text("Change states \' text to ' Singleton ",style: TextStyle(color: Colors.white),),
              color: Colors.purple,
              onPressed: _setTextValue,
            ),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text("Reset ",style: TextStyle(color: Colors.white),),
              color: Colors.purple,
              onPressed: _reset,
            ),
            SizedBox(height: 20,),
            Text('Note state changes\''
    'text over changes',textAlign:TextAlign.justify,style: TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}

