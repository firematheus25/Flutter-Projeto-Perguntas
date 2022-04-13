import 'package:flutter/material.dart';
import 'package:projeto_perguntas/Questao.dart';

void main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final perguntas = ["Qual a sua cor favorita?", "Qual o seu animal favorito?"];

  void _resposta() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Perguntas")),
      body: Column(
        children: <Widget>[
          Questao(perguntas[_perguntaSelecionada]),
          ElevatedButton(
            child: Text("Resposta 1"),
            onPressed: _resposta,
          ),
          ElevatedButton(
            child: Text("Resposta 2"),
            onPressed: _resposta,
          ),
          ElevatedButton(
            child: Text("Resposta 3"),
            onPressed: _resposta,
          ),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return new _PerguntaAppState();
  }
}
