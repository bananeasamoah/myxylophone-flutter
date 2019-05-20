import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  playSound(int fileNumber) {
    final player = AudioCache();
    player.play('note$fileNumber.wav');
  }

  buildKey(Color colors, int soundNumber) {
   return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
       color: colors,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.blue, 1),
              buildKey(Colors.red, 2),
              buildKey(Colors.teal, 3),
              buildKey(Colors.purple, 4),
              buildKey(Colors.yellow, 5),
              buildKey(Colors.grey, 6),
              buildKey(Colors.brown, 7),
            ],
          ),
        ),
      ),
    );
  }
}
