import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(QuizApp());

class _QuestionAppState extends State<QuizApp> {
  int _selectedQuestion = 0;

  void _reply() {
    setState(() {
      _selectedQuestion++;
    });
  }

  final List<String> questions = ['Pergunta 1', 'Pergunta Dois'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "ola texto",
            ),
          ),
          body: Column(
            children: <Widget>[
              Question(questions[_selectedQuestion]),
              Answer('resposta um', _reply),
              Answer('resposta dois', _reply)
            ],
          )),
    );
  }
}

class QuizApp extends StatefulWidget {
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
