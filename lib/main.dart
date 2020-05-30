import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playerSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded toneWidget({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        splashColor: Colors.transparent,
        onPressed: () {
          playerSound(soundNumber);
        },
        color: color,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tone App'),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                toneWidget(color: Colors.red, soundNumber: 1),
                toneWidget(color: Colors.orange, soundNumber: 2),
                toneWidget(color: Colors.yellow, soundNumber: 3),
                toneWidget(color: Colors.green, soundNumber: 4),
                toneWidget(color: Colors.teal, soundNumber: 5),
                toneWidget(color: Colors.blue, soundNumber: 6),
                toneWidget(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
