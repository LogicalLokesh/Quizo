import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({required this.buttonHandler, required this.score, super.key});

  final VoidCallback buttonHandler;
  final int score;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "You reached the end of the quiz!",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20.0),
          Text(
            "Your score is: $score",
            style: TextStyle(
                color: score == 0 ? Colors.red : Colors.green, fontSize: 20),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: buttonHandler,
            child: const Text("Restart Quiz"),
          ),
        ],
      ),
    );
  }
}
