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
            Expanded(
              child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playSound(1);
                  }),
            ),
            Expanded(
              child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playSound(2);
                  }),
            ),
            Expanded(
              child: FlatButton(
                  color: Colors.yellowAccent,
                  onPressed: () {
                    playSound(3);
                  }),
            ),
            Expanded(
              child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound(4);
                  }),
            ),
            Expanded(
              child: FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    playSound(5);
                  }),
            ),
            Expanded(
              child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playSound(6);
                  }),
            ),
            Expanded(
              child: FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    playSound(7);
                  }),
            ),
          ],
        )),
      ),
    );
  }
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

// Another Method to reduce code Duplicacy.
//  Widget custom_Xylo(int num, Color color){
//    return FlatButton(
//      color: color;
//
//    )
//  }

}
