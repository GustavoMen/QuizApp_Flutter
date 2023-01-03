import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.text, this.onReply, {super.key});

  final String? text;
  final void Function() onReply;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(text!),
        onPressed: onReply,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
