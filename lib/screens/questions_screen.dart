import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

import '../questions.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen(this.backStart,{super.key});

  Function() backStart;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState(backStart);
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  _QuestionsScreenState(this.backStart);
  Function() backStart;

  var indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    void responder() {
      setState(() {
        indiceAtual++;
        if (indiceAtual == questions.length) {
          indiceAtual = 0;
        }
      });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        Text(
          questions[indiceAtual].text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Color.fromARGB(255, 201, 153, 251),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        ...questions[indiceAtual].alternatives.map(
              (resp) => AnswerButton(
                text: resp,
                onPressed: responder,
              ),
            ),
        const SizedBox(
          height: 80,
        ),
        FilledButton.icon(
          onPressed: backStart,
          icon: const Icon(Icons.arrow_back),
          label: const Text(
            'Voltar',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
