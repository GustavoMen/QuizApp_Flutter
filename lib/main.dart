import 'package:flutter/material.dart';
import './result.dart';
import './questionary.dart';

void main() => runApp(QuizApp());

class _QuestionAppState extends State<QuizApp> {
  int _selectedQuestion = 0;
  int _allNotes = 0;

  final List<Map<String, Object>> _questions = const [
    {
      "text": "Qual é sua cor favorita?",
      "answers": [
        {"text": "Preto", 'nota': 10},
        {"text": "Vermelho", 'nota': 5},
        {"text": "Verde", 'nota': 3},
        {"text": "Branco", 'nota': 1},
      ],
    },
    {
      "text": "Qual é o seu animal favorito?",
      "answers": [
        {"text": "Cobra", "nota": 10},
        {"text": "Coelho", "nota": 5},
        {"text": "Elefante", "nota": 3},
        {"text": "Leão", "nota": 1},
      ],
    },
    {
      "text": "Qual é o seu instrutor favorito?",
      "answers": [
        {"text": "Leo", "nota": 10},
        {"text": "Gildo", "nota": 5},
        {"text": "João", "nota": 3},
        {"text": "Daiane", "nota": 1},
      ],
    },
  ];

  void _reply(int points) {
    if (hasAnswers) {
      setState(() {
        _selectedQuestion++;
        _allNotes += points;
      });
    }

    print(_allNotes);
  }

  bool get hasAnswers {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "ola texto",
            ),
          ),
          body: hasAnswers
              ? Questionary(
                  selectedQuestion: _selectedQuestion,
                  questions: _questions,
                  reply: _reply)
              : Result("Parabens!", _allNotes)),
    );
  }
}

class QuizApp extends StatefulWidget {
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
