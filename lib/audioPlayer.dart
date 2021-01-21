import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter_tts/flutter_tts.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(audio());

class audio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: audioPlayer(),
    );
  }
}

//class audioPlayer extends StatefulWidget {
//  @override
//  _audioPlayerState createState() => _audioPlayerState();
//}
//
//class _audioPlayerState extends State<audioPlayer> {
//  VoiceController _voiceController;
//  bool bolSpeaking = true;
//  String text1 = "Welcome to Google kit ";
//  String text2 = "Select the time ";
//  String text3 = "After start to walk";
//  String currentTtsString;
//  double ttsSpeechRate1 = 1.0;
//  double ttsSpeechRate2 = 0.5;
//  double currentTtsRate;
//
//  @override
//  void initState() {
//    _voiceController =FlutterTextToSpeech.instance.voiceController();
//    super.initState();
//  }
//
//  @override
//  void dispose() {
//    _voiceController.stop();
//    super.dispose();
//  }
//
//  _playVoice() {
//    _voiceController.init().then((_) {
//      _voiceController.speak(text,VoiceControllerOptions());
//    });
//  }
//
//  _stopVoice(){
//    _voiceController.stop();
//}
//
//  Future playTtsString1() async{
//    bolSpeaking = true;
//    currentTtsString = text1;
//    currentTtsRate = ttsSpeechRate1;
//    await runTextToSpeech(currentTtsString,currentTtsRate);
//    return null;
//  }
//
//  Future playTtsString2() async{
//    bolSpeaking = true;
//    currentTtsString = text2;
//    currentTtsRate = ttsSpeechRate2;
//    await runTextToSpeech(currentTtsString,currentTtsRate);
//    return null;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Column(
//          mainAxisAlignment : MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            Text(text1),
//            Text(text2),
//            Text(text3),
//            RaisedButton(
//              onPressed: _playVoice,
//              color: Colors.blue,
//              child: Text("Play Voice"),
//            ),
//            RaisedButton(
//              onPressed: _stopVoice,
//              color: Colors.blue,
//              child: Text("Stop Voice"),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}


class audioPlayer extends StatefulWidget {
  @override
  _audioPlayerState createState() => _audioPlayerState();
}

class _audioPlayerState extends State<audioPlayer> {

  String text1 = "Welcome to Google kit ";
  String text2 = "Select the time ";
  String text3 = "After start to walk";
  String currentTtsString;
  double ttsSpeechRate1 = 1.0;
  double ttsSpeechRate2 = 0.5;
  double ttsSpeechRate3 = 0.5;
  double currentTtsRate;

  FlutterTts flutterTts;
  bool bolSpeaking = true;

  Future playTtsString1() async{
    bolSpeaking = true;
    currentTtsString = text1;
    currentTtsRate = ttsSpeechRate1;
    await runTextToSpeech(currentTtsString,currentTtsRate);
    return null;
  }

  Future playTtsString2() async{
    bolSpeaking = true;
    currentTtsString = text2;
    currentTtsRate = ttsSpeechRate2;
    await runTextToSpeech(currentTtsString,currentTtsRate);
    return null;
  }

  Future playTtsString3() async{
    bolSpeaking = true;
    currentTtsString = text3;
    currentTtsRate = ttsSpeechRate3;
    await runTextToSpeech(currentTtsString,currentTtsRate);
    return null;
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
//              Text(text1),
//              SizedBox(height: 20,),
//              Text(text2),
//              SizedBox(height: 20,),
//              Text(text3),
//              SizedBox(height: 20,),
              RaisedButton (
                  color: Colors.blue,
                  child: Text("Start",),
                  onPressed: () async {
                    // Play String 1

                    await playTtsString1();

                    // Check String 1 Finish
                    new Future.delayed(new Duration(milliseconds: 50), () async {
                      // loop until bolSpeaking = false
                      while (bolSpeaking) {
                        await Future.delayed(Duration(seconds: 5));
                      }

                      // play String 2
                      await playTtsString2();
                    });
                    new Future.delayed(new Duration(milliseconds: 50), () async {
                      // loop until bolSpeaking = false
                      while (bolSpeaking) {
                        await Future.delayed(Duration(seconds: 5));
                      }

                      // play String
                      await playTtsString3();
//                      while (bolSpeaking == false) {
//                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> myApp()));
//                      }
//                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> myApp()));
                      TyperAnimatedTextKit(
                        text: ['Welcome to Google kit ',"Select the time ","After start to walk"],
                        textStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                        isRepeatingAnimation: false,
                      );
                    });
                  }
              )
            ],
          ),
        )
    );
  }



Future<void> runTextToSpeech(String currentTtsString, double currentSpeechRate) async {
  flutterTts = new FlutterTts();
  await flutterTts.setLanguage("en-GB");
  await flutterTts.setVolume(1.0);
  await flutterTts.setPitch(1.0);
  await flutterTts.isLanguageAvailable("en-GB");
  await flutterTts.setSpeechRate(currentSpeechRate);

  flutterTts.setCompletionHandler(() {
    setState(() {
      // The following code(s) will be called when the TTS finishes speaking
      bolSpeaking = false;

    });
  });

  flutterTts.speak(currentTtsString);
}


}
