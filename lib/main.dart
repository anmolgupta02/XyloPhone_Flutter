import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XyloPhoneApp());
}

class XyloPhoneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            customKeyBuilder(1, Colors.red),
            customKeyBuilder(2, Colors.orange),
            customKeyBuilder(3, Colors.amber),
            customKeyBuilder(4, Colors.teal),
            customKeyBuilder(5, Colors.green),
            customKeyBuilder(6, Colors.blue.shade900),
            customKeyBuilder(7, Colors.purple)
          ],
        )),
      ),
    );
  }
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }
  
  Widget customKeyBuilder(int note, Color color){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(note);
        },
      ),
    );
  }
  
  
// Another Method to reduce code Duplicacy.
//  Widget custom_Xylo(int num, Color color){
//    return FlatButton(
//      color: color;
//
//    )
//  }

}
