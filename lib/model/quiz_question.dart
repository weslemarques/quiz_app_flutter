import 'package:flutter/cupertino.dart';

class QuizQuestion extends ChangeNotifier {

  QuizQuestion(this._id,this._text, this._alternatives, this._answer);

  int _id;
  String _text = "";
  List<String> _alternatives = [];
  String _answer = '';

  String get text => _text;

  set text(String value) {
    _text = value;
  }

  List<String> get alternatives => _alternatives;

  String get answer => _answer;

  set answer(String value) {
    _answer = value;
  }

  List<String> respostasEmbaralhadas() {
    var embaralhadas = [...alternatives];
    embaralhadas.shuffle();
    return embaralhadas;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  bool isCorrect(String attempt){
    return attempt == alternatives[0];
  }


}
