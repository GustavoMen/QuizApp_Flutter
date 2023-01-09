import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.text, {super.key});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text!,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}