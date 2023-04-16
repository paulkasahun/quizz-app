import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String,Object>> question;
  final int questionIndex;
  Quiz({
    required this.answerQuestion,
    required this.question,
    required this.questionIndex

});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Question(question[questionIndex]['question'] as String),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map(
                (answer){
              return Answer(()=>answerQuestion(answer['score']), answer['text'] as String);
            }
        ).toList(),
      ],
    );
  }
}
