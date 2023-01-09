import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.text, this.points, {super.key});

  final String? text;
  final int? points;

  String get resultChat {
    if (points! < 8) {
      return "Parabens!";
    } else if (points! < 12) {
      return "Você é bom!";
    } else if (points! < 16) {
      return "impressionante";
    } else {
      return "Nivel jedi";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultChat,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
