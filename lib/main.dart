import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main()=>runApp(QuizApp());
class QuizApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return QuizAppState();
  }

}
class QuizAppState extends State<QuizApp>{
  final questions = const [
    {
      'question': "how many books are in the Bible?",
      'answers': [
        {'text': '66', 'score': 10},
        {'text': '99', 'score': 0},
        {'text': '81', 'score': 0}
      ]
    },
    {
      'question': 'who wrote the book of Job',
      'answers': [
        {'text': 'Moses', 'score': 10},
        {'text': 'Job', 'score': 0},
        {'text': 'Gersam', 'score': 0}
      ]
    },
    {
      'question': 'who wrote the book of Esther',
      'answers': [
        {'text': 'Paul', 'score': 0},
        {'text':'Moses','score':0},
        {'text': 'Job', 'score': 0},
        {'text': 'Samuel', 'score': 10}
      ]
    },
  ];
  int questionIndex=0;
  int totalScore=0;
  void answerQuestion(int score){
    setState(() {
      questionIndex+=1;
    });
    totalScore+=score;
  }
  void reset(){
    setState(() {
      questionIndex=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('General Quiz')),
        body:questionIndex<questions.length?Quiz(answerQuestion: answerQuestion,
            question: questions,
            questionIndex: questionIndex,
        ):Result(reset,totalScore)
    ));
  }
}










