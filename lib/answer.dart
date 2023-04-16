import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
 final VoidCallback selectHandler;
 String answerText;

  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.orange),
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}