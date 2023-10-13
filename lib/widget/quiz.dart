import 'package:flutter/material.dart';
import 'package:quiz_app/screens/start_screen.dart';

// a classe Quiz é a classe principal da aplicação/
// responsável por chamar as duas telas conforme necessário
class Quiz extends StatefulWidget {
    Quiz({required this.child,super.key});

  Widget child = StartScreen();

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
            ),
          ),
          child: widget.child
        ),
      ),
    );
  }
}

