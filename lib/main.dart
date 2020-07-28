import 'package:audioplayers/audio_cache.dart';
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
        body: SafeArea(
            child: Column(
          children: <Widget>[
            FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                }),
            FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound(2);
                }),
            FlatButton(
                color: Colors.yellowAccent,
                onPressed: () {
                  playSound(3);
                }),
            FlatButton(
                color: Colors.green,
                onPressed: () {
                  playSound(4);
                }),
            FlatButton(
                color: Colors.teal,
                onPressed: () {
                  playSound(5);
                }),
            FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playSound(6);
                }),
            FlatButton(
                color: Colors.purple,
                onPressed: () {
                  playSound(7);
                }),
          ],
        )),
      ),
    );
  }

  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }
}
