import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            // mainAxisSize: MainAxisSize.max,
            // verticalDirection: VerticalDirection.up,
            // verticalDirection: VerticalDirection.down,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Icon(Icons.star, size: 50),
              // Icon(Icons.star, size: 50),
              // Icon(Icons.star, size: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    width: 100.0,
                    // height: 600,
                    color: Colors.red,
                    child: Text(' '),
                    margin: EdgeInsets.only(
                        bottom: 30.0
                    ),
                  ),
                ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.yellow,
                    child: Text(' '),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green,
                    child: Text(' '),
                  ),
                ]
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      // height: 600,
                      color: Colors.blue,
                      child: Text(' '),
                      margin: EdgeInsets.only(
                          bottom: 30.0
                      ),
                    ),
                  ]
              ),
              // Container(
              //   // height: 50,
              //   // margin: EdgeInsets.all(20.0),
              //   // margin: EdgeInsets.only(bottom:30.0),
              //   color: Colors.blueAccent,
              //   child: Text('Container_1'),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   // height: 100,
              //   // margin: EdgeInsets.all(20.0),
              //   // margin: EdgeInsets.only(bottom:30.0),
              //   color: Colors.greenAccent,
              //   child: Text('Container_2'),
              // ),
              // Container(
              //   // height: 100,
              //   // margin: EdgeInsets.all(20.0),
              //   // margin: EdgeInsets.only(bottom:30.0),
              //   color: Colors.redAccent,
              //   child: Text('Container_3'),
              // ),
            ],
          )
        ),
      ),
    );
  }
}

