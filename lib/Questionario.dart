import 'package:flutter/material.dart';
import 'Questao.dart';
import 'Resposta.dart';

class Questionario extends StatelessWidget {
  final int selectedQuestions;
  final List<Map<String, Object>> questions;
  final void Function(int) OnAnswer;
  Questionario({
    required this.questions,
    required this.selectedQuestions,
    required this.OnAnswer,
  });

  bool get hasSelectedQuestion {
    return selectedQuestions < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> responses = hasSelectedQuestion
        ? questions[selectedQuestions].cast()["Response"]
        : [];
    return Container(
        child: Column(
      children: <Widget>[
        Questao(questions[selectedQuestions]["text"].toString()),
        ...responses.map((resp) {
          return Resposta(
            resp["text"].toString(),
            () => OnAnswer(int.parse(resp["score"].toString())),
          );
        }).toList(),
      ],
    ));
  }
}
