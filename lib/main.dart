import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';
import 'about_this_app.dart';

void main() => runApp(MaterialApp(home: _MyApp()));

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = [
    {
      'questionText': 'Why did the math book look so sad? ',
      'answers': [
        {'text': 'It was tired', 'isAnswer': false},
        {'text': 'It was lonely', 'isAnswer': false},
        {'text': 'It had too many problems', 'isAnswer': true},
        {'text': 'It didn\'t like math', 'isAnswer': false},
      ]
    },
    {
      'questionText': 'Why was the computer cold?',
      'answers': [
        {'text': 'It left its Windows open', 'isAnswer': true},
        {'text': 'It was too hot outside', 'isAnswer': false},
        {'text': 'It was in the fridge', 'isAnswer': false},
        {'text': 'It was broken', 'isAnswer': false},
      ]
    },
    {
      'questionText': 'Why did the belt go to jail?',
      'answers': [
        {'text': 'It was a criminal', 'isAnswer': false},
        {'text': 'It was innocent', 'isAnswer': false},
        {'text': 'It held up the pants', 'isAnswer': true},
        {'text': 'It was a joke', 'isAnswer': false},
      ]
    },
    {
      'questionText': 'Why don\'t bicycles ever tell jokes?',
      'answers': [
        {'text': 'They\'re not funny', 'isAnswer': false},
        {'text': 'They\'re two-tired', 'isAnswer': true},
        {'text': 'They\'re busy', 'isAnswer': false},
        {'text': 'They don\'t like jokes', 'isAnswer': false},
      ]
    },
    {
      'questionText': 'Why don\'t scientists trust atoms?',
      'answers': [
        {'text': 'They make up everything', 'isAnswer': true},
        {'text': 'They\'re too small to see', 'isAnswer': false},
        {'text': 'They\'re always moving', 'isAnswer': false},
        {'text': 'They\'re unreliable', 'isAnswer': false},
      ]
    },
    {
      'questionText': 'Why did the tomato turn red?',
      'answers': [
        {'text': 'It was cold', 'isAnswer': false},
        {'text': 'It was embarrassed', 'isAnswer': false},
        {'text': 'It was angry', 'isAnswer': false},
        {'text': 'It saw the salad dressing!', 'isAnswer': true},
      ]
    },
    {
      'questionText': 'Why don\'t skeletons fight each other?',
      'answers': [
        {'text': 'They\'re afraid of breaking a bone', 'isAnswer': false},
        {'text': 'They\'re too busy dancing', 'isAnswer': false},
        {'text': 'They don\'t like to fight', 'isAnswer': false},
        {'text': 'They don\'t have the guts', 'isAnswer': true},
      ]
    },
    {
      'questionText': 'What do you call a bear with no teeth?',
      'answers': [
        {'text': 'A grizzly bear', 'isAnswer': false},
        {'text': 'A polar bear', 'isAnswer': false},
        {'text': 'A gummy bear', 'isAnswer': true},
        {'text': 'A toothless bear', 'isAnswer': false},
      ]
    },
    {
      'questionText': 'Why did the scarecrow win an award?',
      'answers': [
        {'text': 'He scared away the crows', 'isAnswer': false},
        {'text': 'He was good at farming', 'isAnswer': false},
        {'text': 'Because he was outstanding in his field', 'isAnswer': true},
        {'text': 'He was a great dancer', 'isAnswer': false},
      ]
    },
    {
      'questionText': 'Why did the student eat his homework?',
      'answers': [
        {'text': 'He was hungry', 'isAnswer': false},
        {'text': 'He wanted to please the teacher', 'isAnswer': false},
        {'text': 'Teacher told him it was a piece of cake', 'isAnswer': true},
        {'text': 'He didn\'t want to do the assignment', 'isAnswer': false},
      ]
    }
  ];

  void _answerQuestion(bool isCorrect) {
    if (isCorrect) {
      _totalScore++;
    }
    setState(() {
      if (_questionIndex > _questions.length) {
        debugPrint("Invalid question index, soft reset");
        return;
      }
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quizo"),
          actions: const [AboutThisApp()],
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                callback: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(buttonHandler: _resetQuiz, score: _totalScore),
      ),
    );
  }
}
