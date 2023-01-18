

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s is your favorite color?',
      'answers': [{'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 1}]
    },
    {
      'questionText': 'What\'s is your favorite animal?',
      'answers': [{'text': 'Duck', 'score': 10},
        {'text': 'Dog', 'score': 12},
        {'text': 'cat', 'score': 14}]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
       _questionIndex = 0;
       _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      // Notify the framework that the internal state of this object has changed.
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("More questions");
    }
  }

  @override //
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hello'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
              : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
//
