import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_screen.dart';

import '../widget/quiz.dart';

// ignore: must_be_immutable
class StartScreen extends StatelessWidget {
  StartScreen({super.key});

  goToScreenQuestions(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => QuestionsScreen()));
  }

  changeColorButton() {}

  @override
  Widget build(BuildContext context) {
    return Quiz(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logo1.png',
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Aprenda Flutter !",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 237, 223, 252),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            FilledButton.icon(
              onPressed: () {
                goToScreenQuestions(context);
              },
              icon: const Icon(Icons.arrow_forward),
              label: const Text(
                'Iniciar Quiz',
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
