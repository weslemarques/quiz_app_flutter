import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StartScreen extends StatelessWidget {
  StartScreen(this.startQuiz, {super.key});

  Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
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
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_forward),
            label: const Text(
              'Iniciar Quiz',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
