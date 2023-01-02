import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuestionAppState extends State<QuizApp> {
  int selectedQuestion = 0;

  void reply() {
    setState(() {
      selectedQuestion++;
    });

    print('Pergunta Respondida');
    print(selectedQuestion);
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
              Text(questions[selectedQuestion]),
              ElevatedButton(
                child: const Text('Resposta 1'),
                onPressed: reply,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      selectedQuestion == 0 ? Colors.blue : Colors.green,
                  foregroundColor: Colors.white,
                ),
              ),
              ElevatedButton(
                child: const Text('Resposta 2'),
                onPressed: reply,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              )
            ],
          )),
    );
  }
}

class QuizApp extends StatefulWidget {
  QuestionAppState createState() {
    return QuestionAppState();
  }
}
