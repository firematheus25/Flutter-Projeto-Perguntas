import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int score;
  final void Function() restart;

  Resultado(this.score, this.restart);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
              "    Congratulations!\n You made " + score.toString() + " Points",
              style: TextStyle(fontSize: 28)),
        ),
        TextButton(
          child: Text("Restart?"),
          onPressed: restart,
        )
      ],
    );
  }
}
