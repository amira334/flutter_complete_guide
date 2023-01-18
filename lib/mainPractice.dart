import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//Another way
//void main() => (MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State{
  var questionIndex = 0;
  void answerQuestion(){
    //Forces flutter to re-render the user interface.
    setState((){
      questionIndex = questionIndex+1;
    });
    print(questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s is your favorite color?',
      'What\'s is your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Text(questions[questionIndex]),
              ],
            ),
            // RaisedButton
            Row(
              children: [
                Spacer(),
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: Text('Answer 1'),
                ),
                Spacer(),
                // SizedBox(
                //   width: 30, //
                // ),
                ElevatedButton(
                  onPressed: () => print('Answer 2 chosen'),
                  child: Text('Answer 2'),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: (){
                    //....
                    print('Answer 3 chosen!');
                  },
                  child: Text('Answer 3'),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

