import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizzler_flutter/question.dart';
import 'package:quizzler_flutter/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];
  bool disableButton = false;

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      disableButton = true;
      if (quizBrain.getAnswer(userPickedAnswer) == true) {
        scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      } else {
        scoreKeeper.add(Icon(Icons.close, color: Colors.red));
        ;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    Timer(
      Duration(seconds: 0),
      () =>
          _scrollController.jumpTo(_scrollController.position.maxScrollExtent),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: disableButton ? null : () {
                checkAnswer(true);
                },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: disableButton
                  ? null
                  : () {
                      checkAnswer(false);
                    },
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              controller: _scrollController,
              itemCount: scoreKeeper.length,
              itemBuilder: (BuildContext ctxt, int Index) {
                return scoreKeeper[Index];
              }),
        ),
        IconButton(
            onPressed: () {
              setState(() {
                disableButton = false;
                if (quizBrain.isFinished() == true) {
                  Alert(
                      context: context,
                      title: 'Terminado!',
                      desc: 'Has llegado al final del cuestionario. '
                          'Con una puntuación de ${quizBrain.getCountCorrect()}/${quizBrain.getSizeBank()}').show();
                  quizBrain.reset();
                  scoreKeeper = [];
                } else {
                  quizBrain.nextQuestion();
                }
              });
            },
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Icon(
                Icons.double_arrow,
                color: Colors.blue,
                size: 40.0,
              ),
            ))
      ],
    );
  }
}

