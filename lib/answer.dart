// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _callback;
  final String answerText;
  const Answer(this._callback, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 5),
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue)),
        onPressed: _callback,
        child: Text(answerText),
      ),
    );
  }
}
