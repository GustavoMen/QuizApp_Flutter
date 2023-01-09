import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

class Questionary extends StatelessWidget {
  const Questionary(
      {required this.selectedQuestion,
      required this.questions,
      required this.reply,
      super.key});

  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function() reply;

  bool get hasAnswers {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answer = hasAnswers
        ? questions[selectedQuestion].cast()['answers']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        Question(questions[selectedQuestion]['text'].toString()),
        ...answer.map((ans) => Answer(ans['text'] as String, reply)).toList()
      ],
    );
  }
}
