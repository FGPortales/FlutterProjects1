import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int randomNumber = 3;
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Magic Ball'),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Center(
        child: Container(
          child: TextButton(
            child: Image(
              image: AssetImage('images/ball$randomNumber.png'),
            ),
            onPressed: () => {
              setState(() {
                randomNumber = random.nextInt(5) + 1;
              })
            },
          ),
        ),
      ),
    );
  }
}
