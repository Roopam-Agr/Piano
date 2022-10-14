import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int num) {
    final player = AudioCache();
    player.play("note$num.wav");
  }

  Expanded myButton({required Color color, required int action}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(action);
        },
        child: Text(
          "",
          style: TextStyle(color: Colors.black),
        ),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(color: Colors.indigo, action: 1),
            myButton(color: Color.fromARGB(255, 173, 63, 181), action: 2),
            myButton(color: Color.fromARGB(255, 38, 94, 63), action: 3),
            myButton(color: Color.fromARGB(255, 135, 171, 56), action: 4),
            myButton(color: Color.fromARGB(255, 148, 93, 37), action: 5),
            myButton(color: Color.fromARGB(255, 73, 77, 131), action: 6),
            myButton(color: Color.fromARGB(255, 163, 71, 93), action: 7),
          ],
        ),
      ),
    );
  }
}
