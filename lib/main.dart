import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  Xylophone({Key? key}) : super(key: key);

  final audioPlayer = AudioCache();
  void playSound(int soundNumber)
  {
    audioPlayer.play("note$soundNumber.wav");
  }

  Expanded buildKey(int soundNumber, Color colors){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: colors,
        child: Text(''),
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
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.green),
              buildKey(3, Colors.blue),
              buildKey(4, Colors.orange),
              buildKey(5, Colors.pink),
              buildKey(6, Colors.yellow),
              buildKey(7, Colors.purpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}
