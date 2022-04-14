import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String text;

  final void Function() OnSelected;

  Resposta(this.text, this.OnSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(child: Text(text), onPressed: OnSelected));
  }
}
