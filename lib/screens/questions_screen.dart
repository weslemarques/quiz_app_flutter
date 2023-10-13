import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_question.dart';
import 'package:quiz_app/screens/results_screen.dart';
import 'package:quiz_app/widget/answer_button.dart';

import '../data/questions.dart';
import '../widget/quiz.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  int correctQuestions = 0;

  var indiceAtual = 0;

  @override
  Widget build(BuildContext context) {


    void checkAnswer(String answer, int indice){
      var question = questions[indice];

      if(question.isCorrect(answer)){
        correctQuestions++;
      }

    }
    void responder(String answer,int indice) {
      setState(() {
        indiceAtual++;
        checkAnswer(answer, indice);
        if (indiceAtual == questions.length) {
          indiceAtual = 0;
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
                  ResultScreen(correctQuestions)));
        }
      });
    }

    return Quiz(
       child: Column(
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

            ...questions[indiceAtual].respostasEmbaralhadas().map(

                  (resp) => AnswerButton(
                   text:resp,
                onPressed:() {
                       responder(resp, indiceAtual);

                }
              ),
            ),
          ],
        )
    );

  }
}
