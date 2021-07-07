import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({Color color = Colors.red, int sound = 1}){
    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(sound);
        },
        child: Container(),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color)
        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey(color: Colors.red, sound: 1),
              buildKey(color: Colors.orange, sound: 2),
              buildKey(color: Colors.yellowAccent, sound: 3),
              buildKey(color: Colors.green, sound: 4),
              buildKey(color: Colors.blueAccent, sound: 5),
              buildKey(color: Colors.indigo, sound: 6),
              buildKey(color: Colors.purple, sound: 7),
            ],
          ),
        ),
      )
    );
  }
}

