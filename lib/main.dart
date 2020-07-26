import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void audioClick(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded playButon({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          audioClick(soundNumber);
        },
        // child: Text(
        //   'Note 2',
        //   style: TextStyle(fontSize: 25.0),
        // ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playButon(color: Colors.red, soundNumber: 1),
              playButon(color: Colors.orange, soundNumber: 2),
              playButon(color: Colors.yellow, soundNumber: 3),
              playButon(color: Colors.green, soundNumber: 4),
              playButon(color: Colors.teal, soundNumber: 5),
              playButon(color: Colors.blue, soundNumber: 6),
              playButon(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
