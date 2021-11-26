import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // void answerQuestion() {
    //   print('answer chosen');
    // }

    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What is your favorite fruit?',
      'Who do you like to spend time with the most?',
      'Tell me more about yourself?',
    ];

    var style;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('The title of my app')),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () {
                print('Answer 2 chosen');
              },
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
