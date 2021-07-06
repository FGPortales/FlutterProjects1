import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.cyan[100],
          appBar: AppBar(
            backgroundColor: Colors.cyan[900],
            title: Center(
              child: Text(
                "I'm Poor",
                style: TextStyle(
                    fontFamily: 'FreckleFace',
                    fontSize: 28.0,
                ),
              ),
            ),
          ),
          body: Center(
            child: Center(
              child: Image(
                image: AssetImage('images/chavo.png'),
              ),
            ),
          )),
    ),
  );
}
