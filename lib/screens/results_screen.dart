import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/model/quiz_question.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/widget/quiz.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.correctQuestions, {super.key});

  int correctQuestions;

  @override
  Widget build(BuildContext context) {
    return Quiz(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${correctQuestions}/${questions.length}',
              style: const TextStyle(
                color: Color.fromARGB(230, 230, 230, 255),
                fontSize: 40,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...questions.map(
              (ques) => Column(
                children: [
                  Text(
                    ques.text,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(222, 222, 222, 222),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    ques.answer,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            FilledButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StartScreen()));
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text(
                'Reiniciar',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
