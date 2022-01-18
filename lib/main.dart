import 'package:flutter/material.dart'; //it is in flutter framework and has a lot of material widgets

//relative import
import './question.dart';
void main() {
  //wiring widgets to the main app
  //we use a function provided by the Material app called "runApp()"
  runApp(MyApp()); //takes widget tree and draws something non the scree
}

class MyApp extends StatelessWidget {

  //create a function that takes no argument and does not retuen anything
  void answerQuiz(){
    print("Response Recorded");
  }

  @override
  Widget build(BuildContext context) {
    var questionsList = [
      "What's your favorite animal",
      "What's your favorite color",
      "what's your hobby",
      "Can we go out anytime",
      "Do you love charitable works"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('learning flutter'),
        ),
        body: Column(
          children: [
            Text("The questions List: "),
            RaisedButton(
              child: Text("Response 1"),
              onPressed: answerQuiz,
            ),
            RaisedButton(
              child: Text("Response 2"),
              onPressed: answerQuiz,
            ),
            RaisedButton(
              child: Text("Response 3"),
              onPressed: answerQuiz,
            ),
            RaisedButton(
              child: Text("Response 4"),
              onPressed: answerQuiz,
            ),
          ], //this tells dart that this widget will hold a list of other widgets
        ),
      ),
    );
  }
}
