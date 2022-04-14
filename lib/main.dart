import 'package:flutter/material.dart';
import 'package:projeto_perguntas/Questionario.dart';
import './Resultado.dart';

void main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _selectedQuestions = 0;
  var _totalScore = 0;

  final List<Map<String, Object>> _questions = const [
    {
      "text": "What's your favorite color?",
      "Response": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 7},
        {"text": "Green", "score": 6},
        {"text": "White", "score": 4},
      ]
    },
    {
      "text": "What's your favorite animal?",
      "Response": [
        {"text": "Rabbit", "score": 6},
        {"text": "Snake", "score": 7},
        {"text": "Elephant", "score": 2},
        {"text": "Lion", "score": 10},
      ]
    },
    {
      "text": "What's your favorite Instructor?",
      "Response": [
        {"text": "Maria", "score": 10},
        {"text": "João", "score": 7},
        {"text": "Leo", "score": 3},
        {"text": "Pedro", "score": 8},
      ]
    }
  ];

  void _answer(int score) {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestions++;
        _totalScore += score;
      });
    }
  }

  void _restart() {
    setState(() {
      _selectedQuestions = 0;
      _totalScore = 0;
    });
  }

  bool get hasSelectedQuestion {
    return _selectedQuestions < _questions.length;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Perguntas")),
      body: hasSelectedQuestion
          ? Questionario(
              questions: _questions,
              selectedQuestions: _selectedQuestions,
              OnAnswer: _answer)
          : Resultado(_totalScore, _restart),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return new _PerguntaAppState();
  }
}
