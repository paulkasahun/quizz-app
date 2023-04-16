import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
        margin:EdgeInsets.all(20) ,
        child:Text(questionText,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,)
    );
  }
}