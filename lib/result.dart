import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final VoidCallback resetHandler;
  final int totalResult;
  Result(this.resetHandler,this.totalResult);
  String get resultPhrase{
    String phrase;
    if(totalResult==30){
      phrase='Excellent! You got all.\n'+'Score: '+totalResult.toString();
    }else if(totalResult==20){
      phrase='Good!\n'+'Score:'+totalResult.toString();
    }else if(totalResult==10){
      phrase='you may try latter. \n'+'Score:'+totalResult.toString();
    }else{
      phrase='woo..bad! try latter. \n'+'Score:'+totalResult.toString();
    }
    return phrase;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
          children: [
            Text(resultPhrase,style: TextStyle(fontSize: 20),),
            TextButton(onPressed: resetHandler,
              child: Text('Back',style: TextStyle(fontSize: 28),),

            )
          ],
        ),

    );

  }
}