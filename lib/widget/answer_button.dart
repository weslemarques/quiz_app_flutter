import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_question.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({required this.text, required this.onPressed, super.key});
  final String text;
  final Function() onPressed;

  Color colorButton = const Color.fromARGB(255, 33, 1, 95);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 20,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorButton ,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        onPressed:onPressed,
        child: Text(text),
      ),
    );
  }
}



