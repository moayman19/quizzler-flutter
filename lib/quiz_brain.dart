import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'question.dart';
class QuizBrain{
  int _questionTraker = 0;

  List<Question> _questionsBank = [
    Question(questionText: 'Some cats are actually allergic to humans', questionAnswer: true),
    Question(questionText: 'You can lead a cow down stairs but not up stairs.', questionAnswer: false),
    Question(questionText: 'Approximately one quarter of human bones are in the feet.', questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
    Question(questionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', questionAnswer: true),
    Question(questionText: 'It is illegal to pee in the Ocean in Portugal.', questionAnswer: true),
    Question(
        questionText: 'No piece of square dry paper can be folded in half more than 7 times.',
        questionAnswer: false),
    Question(
        questionText: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        questionAnswer: true),
    Question(
        questionText: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        questionAnswer: false),
    Question(
        questionText: 'The total surface area of two human lungs is approximately 70 square metres.',
        questionAnswer: true),
    Question(questionText: 'Google was originally called \"Backrub\".', questionAnswer: true),
    Question(
        questionText: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        questionAnswer: true),
    Question(
        questionText: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        questionAnswer: true),

  ];
  List<Icon> scoreTracker = [];

  String getQuestionText(){
    return _questionsBank[_questionTraker].questionText??"";

  }
bool getQuestionAnswer (){
    return _questionsBank[_questionTraker].questionAnswer??true;

}
 void iconCheck(bool answer){
  if (getQuestionAnswer() == answer) {
      scoreTracker.add(Icon(
      Icons.check,
      color: Colors.green,
    ));
  } else {
    scoreTracker.add( Icon(
      Icons.close,
      color: Colors.red,
    ));
  }

}


  void nextQuestion(BuildContext context){
  if (_questionTraker < _questionsBank.length - 1) {
   _questionTraker++;
  } else {
    Alert(
      context: context,
      title: "Finished!",
      desc: "You've reached the end of the quiz.",
    ).show();
   scoreTracker.clear();
    _questionTraker = 0;

  }
}



}