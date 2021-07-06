import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Widget buildKey({int songNumber = 1, Color mycolor = Colors.red}){
    return Expanded(
      child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => mycolor)),
          onPressed: () {
            playSound(songNumber);
          },
          child: SizedBox.shrink()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My own xylophone - FreddyGPA',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(songNumber: 1, mycolor: Colors.red),
              buildKey(songNumber: 2, mycolor: Colors.orange),
              buildKey(songNumber: 3, mycolor: Colors.yellow),
              buildKey(songNumber: 4, mycolor: Colors.green),
              buildKey(songNumber: 5, mycolor: Colors.teal),
              buildKey(songNumber: 6, mycolor: Colors.blue),
              buildKey(songNumber: 7, mycolor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
