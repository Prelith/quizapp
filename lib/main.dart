import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Center(child: const Text('The title of my App')),
            ),
            body: Column(children: const [
              Text('The Question'),
              RaisedButton(
                child: Text('Solution 1'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Solution 2'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Solution 3'),
                onPressed: null,
              ),
            ])));
  }
}
